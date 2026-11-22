//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Quote {
  /// Returns a new [Quote] instance.
  Quote({
    this.channels = const [],
    this.recipients = const {},
    this.units = const {},
    required this.recipientCount,
    this.skipped = const [],
    this.blockers = const [],
    required this.sms,
    required this.variants,
    this.trackedLinks = const [],
    required this.heldUntil,
    required this.estimateMinor,
    required this.currency,
  });

  List<Channel> channels;

  /// A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read `recipientCount` unless you need the rows. 
  Map<String, List<QuotedRecipient>> recipients;

  /// Billable units, per channel.
  Map<String, int> units;

  int recipientCount;

  List<SkippedRecipient> skipped;

  /// Everything standing in the way. Those with `skippable: false` stop the send.
  List<Blocker> blockers;

  QuoteSms sms;

  QuoteVariants variants;

  /// The links that will be rewritten. Empty when tracking is off or nothing can be tracked.
  List<String> trackedLinks;

  QuoteHeldUntil heldUntil;

  /// What the units would cost at the published top-up rate
  int estimateMinor;

  String currency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Quote &&
    _deepEquality.equals(other.channels, channels) &&
    _deepEquality.equals(other.recipients, recipients) &&
    _deepEquality.equals(other.units, units) &&
    other.recipientCount == recipientCount &&
    _deepEquality.equals(other.skipped, skipped) &&
    _deepEquality.equals(other.blockers, blockers) &&
    other.sms == sms &&
    other.variants == variants &&
    _deepEquality.equals(other.trackedLinks, trackedLinks) &&
    other.heldUntil == heldUntil &&
    other.estimateMinor == estimateMinor &&
    other.currency == currency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels.hashCode) +
    (recipients.hashCode) +
    (units.hashCode) +
    (recipientCount.hashCode) +
    (skipped.hashCode) +
    (blockers.hashCode) +
    (sms.hashCode) +
    (variants.hashCode) +
    (trackedLinks.hashCode) +
    (heldUntil.hashCode) +
    (estimateMinor.hashCode) +
    (currency.hashCode);

  @override
  String toString() => 'Quote[channels=$channels, recipients=$recipients, units=$units, recipientCount=$recipientCount, skipped=$skipped, blockers=$blockers, sms=$sms, variants=$variants, trackedLinks=$trackedLinks, heldUntil=$heldUntil, estimateMinor=$estimateMinor, currency=$currency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channels'] = this.channels;
      json[r'recipients'] = this.recipients;
      json[r'units'] = this.units;
      json[r'recipientCount'] = this.recipientCount;
      json[r'skipped'] = this.skipped;
      json[r'blockers'] = this.blockers;
      json[r'sms'] = this.sms;
      json[r'variants'] = this.variants;
      json[r'trackedLinks'] = this.trackedLinks;
      json[r'heldUntil'] = this.heldUntil;
      json[r'estimateMinor'] = this.estimateMinor;
      json[r'currency'] = this.currency;
    return json;
  }

  /// Returns a new [Quote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Quote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Quote[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Quote[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Quote(
        channels: Channel.listFromJson(json[r'channels']),
        recipients: json[r'recipients'] == null
          ? const {}
            : QuotedRecipient.mapListFromJson(json[r'recipients']),
        units: mapCastOfType<String, int>(json, r'units')!,
        recipientCount: mapValueOfType<int>(json, r'recipientCount')!,
        skipped: SkippedRecipient.listFromJson(json[r'skipped']),
        blockers: Blocker.listFromJson(json[r'blockers']),
        sms: QuoteSms.fromJson(json[r'sms'])!,
        variants: QuoteVariants.fromJson(json[r'variants'])!,
        trackedLinks: json[r'trackedLinks'] is Iterable
            ? (json[r'trackedLinks'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        heldUntil: QuoteHeldUntil.fromJson(json[r'heldUntil'])!,
        estimateMinor: mapValueOfType<int>(json, r'estimateMinor')!,
        currency: mapValueOfType<String>(json, r'currency')!,
      );
    }
    return null;
  }

  static List<Quote> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Quote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Quote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Quote> mapFromJson(dynamic json) {
    final map = <String, Quote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Quote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Quote-objects as value to a dart map
  static Map<String, List<Quote>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Quote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Quote.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channels',
    'recipients',
    'units',
    'recipientCount',
    'skipped',
    'blockers',
    'sms',
    'variants',
    'trackedLinks',
    'heldUntil',
    'estimateMinor',
    'currency',
  };
}

