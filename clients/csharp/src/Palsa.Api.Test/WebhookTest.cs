using System;
using System.IO;
using System.Text;
using System.Text.Json;
using Palsa.Api;
using Xunit;

namespace Palsa.Api.Test
{
    /// <summary>
    /// Webhook verification, against the fixture the Palsa server itself signed.
    ///
    /// A test comparing .NET's HMAC with .NET's own HMAC would prove nothing. This proves the client
    /// agrees with the server, and a test on the TypeScript side asserts the same fixture still matches
    /// what the server signs today, so neither can drift without a failure.
    ///
    /// The fixture is found by walking up from the test assembly rather than by counting directories from
    /// the working directory. A relative path did work from one place and not from another, which is how
    /// the first CI run failed: 13 tests broke in the constructor before any of them checked a signature.
    /// </summary>
    public class WebhookTest
    {
        private readonly string _secret;
        private readonly byte[] _body;
        private readonly string _signature;
        private readonly DateTimeOffset _signedAt;
        private static readonly TimeSpan TenMinutes = TimeSpan.FromMinutes(10);

        public WebhookTest()
        {
            using var fixture = JsonDocument.Parse(File.ReadAllText(FindFixture()));
            var root = fixture.RootElement;
            _secret = root.GetProperty("secret").GetString()!;
            _body = Encoding.UTF8.GetBytes(root.GetProperty("body").GetString()!);
            _signature = root.GetProperty("signature").GetString()!;
            _signedAt = DateTimeOffset.FromUnixTimeMilliseconds(root.GetProperty("timestampMs").GetInt64());
        }

        /// <summary>
        /// The shared fixture, found by walking up from the test assembly to the repository root. The
        /// assembly sits several directories deep in bin/, and the working directory depends on where
        /// `dotnet test` was invoked, so neither is a reliable starting point on its own.
        /// </summary>
        private static string FindFixture()
        {
            var relative = Path.Combine("tests", "fixtures", "webhook-signature.json");
            foreach (var start in new[] { AppContext.BaseDirectory, Directory.GetCurrentDirectory() })
            {
                for (var dir = new DirectoryInfo(start); dir != null; dir = dir.Parent)
                {
                    var candidate = Path.Combine(dir.FullName, relative);
                    if (File.Exists(candidate))
                    {
                        return candidate;
                    }
                }
            }
            throw new FileNotFoundException(
                "The shared fixture tests/fixtures/webhook-signature.json was not found above " +
                AppContext.BaseDirectory + " or " + Directory.GetCurrentDirectory() + ".");
        }

        [Fact]
        public void AcceptsASignatureTheServerProduced()
        {
            Assert.True(Webhook.Verify(_body, _signature, _secret, _signedAt));
        }

        [Fact]
        public void ParseReturnsTheEvent()
        {
            using var parsed = Webhook.Parse(_body, _signature, _secret, _signedAt);
            Assert.Equal("notification.delivered", parsed.RootElement.GetProperty("type").GetString());
        }

        [Fact]
        public void RefusesAChangedBody()
        {
            var tampered = Encoding.UTF8.GetBytes(
                Encoding.UTF8.GetString(_body).Replace("dlv_1", "dlv_2"));
            Assert.False(Webhook.Verify(tampered, _signature, _secret, _signedAt));
        }

        [Fact]
        public void RefusesTheWrongSecret()
        {
            Assert.False(Webhook.Verify(_body, _signature, "whsec_other", _signedAt));
        }

        [Theory]
        [InlineData(null)]
        [InlineData("")]
        [InlineData("v1=deadbeef")]
        [InlineData("t=notanumber,v1=deadbeef")]
        [InlineData("nonsense")]
        public void RefusesAMalformedOrMissingSignature(string? bad)
        {
            Assert.False(Webhook.Verify(_body, bad, _secret, _signedAt));
        }

        [Fact]
        public void RefusesAMovedTimestamp()
        {
            // The timestamp is covered by the signature, so moving it breaks the check.
            Assert.False(Webhook.Verify(_body, _signature.Replace("t=", "t=1"), _secret, _signedAt));
        }

        [Fact]
        public void RefusesOneTooOldToBeFresh()
        {
            // This is what stops an old delivery being replayed later.
            Assert.False(Webhook.Verify(_body, _signature, _secret, _signedAt + TenMinutes));
            Assert.True(Webhook.Verify(_body, _signature, _secret, _signedAt.AddMinutes(1)));
            // A wider window accepts it, for a consumer that wants one.
            Assert.True(Webhook.Verify(
                _body, _signature, _secret, _signedAt + TenMinutes, TimeSpan.FromMinutes(20)));
        }

        [Fact]
        public void RefusesOneFromTooFarAhead()
        {
            // A clock far in front is as suspect as one far behind.
            Assert.False(Webhook.Verify(_body, _signature, _secret, _signedAt - TenMinutes));
        }

        [Fact]
        public void ParseThrowsRatherThanReturningNothing()
        {
            Assert.Throws<Webhook.InvalidSignatureException>(
                () => Webhook.Parse(_body, "v1=nope", _secret, _signedAt));
        }
    }
}
