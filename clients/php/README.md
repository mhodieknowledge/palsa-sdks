# OpenAPIClient-php

Palsa is prepaid. Credit is reserved before anything reaches a supplier and only what a supplier
accepted is charged, so a balance cannot go below nothing. `QUOTA_EXCEEDED` means exactly that: the
workspace could not pay for the send, and nothing was sent.

A key belongs to one workspace, so no path here names a workspace and no key can reach another's data.

What happened to a send is reported by webhook, signed as
`Palsa-Signature: t=<milliseconds>,v1=<hex>`: an HMAC-SHA256 over `<t>.<raw body>`. Verify against the
raw body, because parsing and re-serialising it changes the bytes, and refuse a signature older than
five minutes, which is what stops an old delivery being replayed at you later. Every client library
ships a verifier, since no generator produces one.

**This file is generated from nothing and generates everything.** Every Palsa client library is
produced from it, so an API change is a change here followed by a regeneration. It is also tested
against the running server, because a specification is a claim about what the server does and a wrong
claim would be inherited by every client at once.


For more information, please visit [https://palsa.mhodieknowledge.workers.dev](https://palsa.mhodieknowledge.workers.dev).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/mhodieknowledge/palsa.git"
    }
  ],
  "require": {
    "mhodieknowledge/palsa": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer authorization: bearerAuth
$config = Palsa\Api\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Palsa\Api\Api\BillingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getBalances();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BillingApi->getBalances: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://palsa.mhodieknowledge.workers.dev*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BillingApi* | [**getBalances**](docs/Api/BillingApi.md#getbalances) | **GET** /v1/balances | Prepaid balances
*ContactsApi* | [**createContact**](docs/Api/ContactsApi.md#createcontact) | **POST** /v1/contacts | Save a contact
*ContactsApi* | [**deleteContact**](docs/Api/ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Erase a contact
*ContactsApi* | [**listContacts**](docs/Api/ContactsApi.md#listcontacts) | **GET** /v1/contacts | List contacts
*ContactsApi* | [**registerDevice**](docs/Api/ContactsApi.md#registerdevice) | **POST** /v1/devices | Register a device for push
*NotificationsApi* | [**describeMcp**](docs/Api/NotificationsApi.md#describemcp) | **GET** /v1/mcp | What the MCP endpoint is
*NotificationsApi* | [**getNotification**](docs/Api/NotificationsApi.md#getnotification) | **GET** /v1/notifications/{id} | One send
*NotificationsApi* | [**listNotifications**](docs/Api/NotificationsApi.md#listnotifications) | **GET** /v1/notifications | List sends
*NotificationsApi* | [**quoteSend**](docs/Api/NotificationsApi.md#quotesend) | **POST** /v1/quotes | Price a send without making it
*NotificationsApi* | [**sendNotification**](docs/Api/NotificationsApi.md#sendnotification) | **POST** /v1/notifications | Send a notification
*VerificationApi* | [**checkVerification**](docs/Api/VerificationApi.md#checkverification) | **POST** /v1/verifications/{id}/check | Check a code
*VerificationApi* | [**startVerification**](docs/Api/VerificationApi.md#startverification) | **POST** /v1/verifications | Send a one-time code

## Models

- [Balance](docs/Model/Balance.md)
- [Blocker](docs/Model/Blocker.md)
- [Channel](docs/Model/Channel.md)
- [CheckVerification200Response](docs/Model/CheckVerification200Response.md)
- [CheckVerificationRequest](docs/Model/CheckVerificationRequest.md)
- [Contact](docs/Model/Contact.md)
- [ContactCreate](docs/Model/ContactCreate.md)
- [CreateContact201Response](docs/Model/CreateContact201Response.md)
- [CreateContact201ResponseData](docs/Model/CreateContact201ResponseData.md)
- [DeleteContact200Response](docs/Model/DeleteContact200Response.md)
- [DeleteContact200ResponseData](docs/Model/DeleteContact200ResponseData.md)
- [DescribeMcp200Response](docs/Model/DescribeMcp200Response.md)
- [DeviceRegister](docs/Model/DeviceRegister.md)
- [Error](docs/Model/Error.md)
- [ErrorEnvelope](docs/Model/ErrorEnvelope.md)
- [GetBalances200Response](docs/Model/GetBalances200Response.md)
- [GetBalances200ResponseData](docs/Model/GetBalances200ResponseData.md)
- [GetNotification200Response](docs/Model/GetNotification200Response.md)
- [ListContacts200Response](docs/Model/ListContacts200Response.md)
- [ListContacts200ResponseData](docs/Model/ListContacts200ResponseData.md)
- [ListNotifications200Response](docs/Model/ListNotifications200Response.md)
- [ListNotifications200ResponseData](docs/Model/ListNotifications200ResponseData.md)
- [ListNotifications200ResponseMeta](docs/Model/ListNotifications200ResponseMeta.md)
- [Notification](docs/Model/Notification.md)
- [NotificationSummary](docs/Model/NotificationSummary.md)
- [Quote](docs/Model/Quote.md)
- [QuoteHeldUntil](docs/Model/QuoteHeldUntil.md)
- [QuoteSend200Response](docs/Model/QuoteSend200Response.md)
- [QuoteSms](docs/Model/QuoteSms.md)
- [QuoteVariants](docs/Model/QuoteVariants.md)
- [QuotedRecipient](docs/Model/QuotedRecipient.md)
- [Recipients](docs/Model/Recipients.md)
- [RegisterDevice201Response](docs/Model/RegisterDevice201Response.md)
- [RegisterDevice201ResponseData](docs/Model/RegisterDevice201ResponseData.md)
- [SendNotification202Response](docs/Model/SendNotification202Response.md)
- [SendRequest](docs/Model/SendRequest.md)
- [SendResult](docs/Model/SendResult.md)
- [SkippedRecipient](docs/Model/SkippedRecipient.md)
- [StartVerification201Response](docs/Model/StartVerification201Response.md)
- [Verification](docs/Model/Verification.md)
- [VerificationCheck](docs/Model/VerificationCheck.md)
- [VerificationRequest](docs/Model/VerificationRequest.md)

## Authorization

Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Package version: `0.1.0`
    - Generator version: `7.14.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.

## Licence

MIT. See the repository for the full text.
