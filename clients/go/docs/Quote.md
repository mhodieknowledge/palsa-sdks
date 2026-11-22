# Quote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | [**[]Channel**](Channel.md) |  | 
**Recipients** | [**map[string][]QuotedRecipient**](array.md) | A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns fifty thousand rows, so read &#x60;recipientCount&#x60; unless you need the rows.  | 
**Units** | **map[string]int32** | Billable units, per channel. | 
**RecipientCount** | **int32** |  | 
**Skipped** | [**[]SkippedRecipient**](SkippedRecipient.md) |  | 
**Blockers** | [**[]Blocker**](Blocker.md) | Everything standing in the way. Those with &#x60;skippable: false&#x60; stop the send. | 
**Sms** | [**QuoteSms**](QuoteSms.md) |  | 
**Variants** | [**QuoteVariants**](QuoteVariants.md) |  | 
**TrackedLinks** | **[]string** | The links that will be rewritten. Empty when tracking is off or nothing can be tracked. | 
**HeldUntil** | [**QuoteHeldUntil**](QuoteHeldUntil.md) |  | 
**EstimateMinor** | **int32** | What the units would cost at the published top-up rate | 
**Currency** | **string** |  | 

## Methods

### NewQuote

`func NewQuote(channels []Channel, recipients map[string][]QuotedRecipient, units map[string]int32, recipientCount int32, skipped []SkippedRecipient, blockers []Blocker, sms QuoteSms, variants QuoteVariants, trackedLinks []string, heldUntil QuoteHeldUntil, estimateMinor int32, currency string, ) *Quote`

NewQuote instantiates a new Quote object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQuoteWithDefaults

`func NewQuoteWithDefaults() *Quote`

NewQuoteWithDefaults instantiates a new Quote object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannels

`func (o *Quote) GetChannels() []Channel`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *Quote) GetChannelsOk() (*[]Channel, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *Quote) SetChannels(v []Channel)`

SetChannels sets Channels field to given value.


### GetRecipients

`func (o *Quote) GetRecipients() map[string][]QuotedRecipient`

GetRecipients returns the Recipients field if non-nil, zero value otherwise.

### GetRecipientsOk

`func (o *Quote) GetRecipientsOk() (*map[string][]QuotedRecipient, bool)`

GetRecipientsOk returns a tuple with the Recipients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipients

`func (o *Quote) SetRecipients(v map[string][]QuotedRecipient)`

SetRecipients sets Recipients field to given value.


### GetUnits

`func (o *Quote) GetUnits() map[string]int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *Quote) GetUnitsOk() (*map[string]int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *Quote) SetUnits(v map[string]int32)`

SetUnits sets Units field to given value.


### GetRecipientCount

`func (o *Quote) GetRecipientCount() int32`

GetRecipientCount returns the RecipientCount field if non-nil, zero value otherwise.

### GetRecipientCountOk

`func (o *Quote) GetRecipientCountOk() (*int32, bool)`

GetRecipientCountOk returns a tuple with the RecipientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipientCount

`func (o *Quote) SetRecipientCount(v int32)`

SetRecipientCount sets RecipientCount field to given value.


### GetSkipped

`func (o *Quote) GetSkipped() []SkippedRecipient`

GetSkipped returns the Skipped field if non-nil, zero value otherwise.

### GetSkippedOk

`func (o *Quote) GetSkippedOk() (*[]SkippedRecipient, bool)`

GetSkippedOk returns a tuple with the Skipped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipped

`func (o *Quote) SetSkipped(v []SkippedRecipient)`

SetSkipped sets Skipped field to given value.


### GetBlockers

`func (o *Quote) GetBlockers() []Blocker`

GetBlockers returns the Blockers field if non-nil, zero value otherwise.

### GetBlockersOk

`func (o *Quote) GetBlockersOk() (*[]Blocker, bool)`

GetBlockersOk returns a tuple with the Blockers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockers

`func (o *Quote) SetBlockers(v []Blocker)`

SetBlockers sets Blockers field to given value.


### GetSms

`func (o *Quote) GetSms() QuoteSms`

GetSms returns the Sms field if non-nil, zero value otherwise.

### GetSmsOk

`func (o *Quote) GetSmsOk() (*QuoteSms, bool)`

GetSmsOk returns a tuple with the Sms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSms

`func (o *Quote) SetSms(v QuoteSms)`

SetSms sets Sms field to given value.


### GetVariants

`func (o *Quote) GetVariants() QuoteVariants`

GetVariants returns the Variants field if non-nil, zero value otherwise.

### GetVariantsOk

`func (o *Quote) GetVariantsOk() (*QuoteVariants, bool)`

GetVariantsOk returns a tuple with the Variants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariants

`func (o *Quote) SetVariants(v QuoteVariants)`

SetVariants sets Variants field to given value.


### GetTrackedLinks

`func (o *Quote) GetTrackedLinks() []string`

GetTrackedLinks returns the TrackedLinks field if non-nil, zero value otherwise.

### GetTrackedLinksOk

`func (o *Quote) GetTrackedLinksOk() (*[]string, bool)`

GetTrackedLinksOk returns a tuple with the TrackedLinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrackedLinks

`func (o *Quote) SetTrackedLinks(v []string)`

SetTrackedLinks sets TrackedLinks field to given value.


### GetHeldUntil

`func (o *Quote) GetHeldUntil() QuoteHeldUntil`

GetHeldUntil returns the HeldUntil field if non-nil, zero value otherwise.

### GetHeldUntilOk

`func (o *Quote) GetHeldUntilOk() (*QuoteHeldUntil, bool)`

GetHeldUntilOk returns a tuple with the HeldUntil field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeldUntil

`func (o *Quote) SetHeldUntil(v QuoteHeldUntil)`

SetHeldUntil sets HeldUntil field to given value.


### GetEstimateMinor

`func (o *Quote) GetEstimateMinor() int32`

GetEstimateMinor returns the EstimateMinor field if non-nil, zero value otherwise.

### GetEstimateMinorOk

`func (o *Quote) GetEstimateMinorOk() (*int32, bool)`

GetEstimateMinorOk returns a tuple with the EstimateMinor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimateMinor

`func (o *Quote) SetEstimateMinor(v int32)`

SetEstimateMinor sets EstimateMinor field to given value.


### GetCurrency

`func (o *Quote) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *Quote) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *Quote) SetCurrency(v string)`

SetCurrency sets Currency field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


