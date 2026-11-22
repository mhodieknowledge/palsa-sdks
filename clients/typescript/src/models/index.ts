/* tslint:disable */
/* eslint-disable */
/**
 * Reservations and usage are split by where the units came from, because included units are spent
 * before purchased ones: the allowance the customer has already paid for goes first, and what they
 * bought separately is kept for when it runs out.
 * 
 * @export
 * @interface Balance
 */
export interface Balance {
    /**
     * 
     * @type {Channel}
     * @memberof Balance
     */
    channel: Channel;
    /**
     * The plan's allowance for this period.
     * @type {number}
     * @memberof Balance
     */
    included: number;
    /**
     * Credit bought separately
     * @type {number}
     * @memberof Balance
     */
    purchased: number;
    /**
     * Included units promised to sends in flight.
     * @type {number}
     * @memberof Balance
     */
    reservedIncluded: number;
    /**
     * Purchased units promised to sends in flight.
     * @type {number}
     * @memberof Balance
     */
    reservedPurchased: number;
    /**
     * 
     * @type {number}
     * @memberof Balance
     */
    usedIncluded: number;
    /**
     * 
     * @type {number}
     * @memberof Balance
     */
    usedPurchased: number;
    /**
     * `included + purchased - reserved`, and what a send is actually checked against. It cannot go
     * below nothing.
     * 
     * @type {number}
     * @memberof Balance
     */
    available: number;
    /**
     * When the included allowance expires. Purchased units are unaffected by it.
     * @type {string}
     * @memberof Balance
     */
    periodEnd?: string | null;
}


/**
 * 
 * @export
 * @interface Blocker
 */
export interface Blocker {
    /**
     * 
     * @type {string}
     * @memberof Blocker
     */
    code: string;
    /**
     * 
     * @type {string}
     * @memberof Blocker
     */
    message: string;
    /**
     * False stops the send outright. True means it proceeds with those recipients left out.
     * @type {boolean}
     * @memberof Blocker
     */
    skippable: boolean;
    /**
     * 
     * @type {number}
     * @memberof Blocker
     */
    count?: number;
}

/**
 * SMS is charged per 160-character segment, and one character outside GSM 03.38 forces the whole
 * message to Unicode, which more than halves what fits. Email is one unit per message. Push costs
 * no prepaid units.
 * 
 * @export
 */
export const Channel = {
    Sms: 'sms',
    Email: 'email',
    Push: 'push'
} as const;
export type Channel = typeof Channel[keyof typeof Channel];

/**
 * 
 * @export
 * @interface CheckVerification200Response
 */
export interface CheckVerification200Response {
    /**
     * 
     * @type {VerificationCheck}
     * @memberof CheckVerification200Response
     */
    data: VerificationCheck;
}
/**
 * 
 * @export
 * @interface CheckVerificationRequest
 */
export interface CheckVerificationRequest {
    /**
     * 
     * @type {string}
     * @memberof CheckVerificationRequest
     */
    code: string;
}
/**
 * 
 * @export
 * @interface Contact
 */
export interface Contact {
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    email?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    phone?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    state: ContactStateEnum;
    /**
     * JSON array
     * @type {string}
     * @memberof Contact
     */
    tags?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Contact
     */
    createdAt: string;
}


/**
 * @export
 */
export const ContactStateEnum = {
    Consented: 'consented',
    Pending: 'pending',
    Unsubscribed: 'unsubscribed',
    Bounced: 'bounced'
} as const;
export type ContactStateEnum = typeof ContactStateEnum[keyof typeof ContactStateEnum];

/**
 * Give an email address or a phone number, or both.
 * @export
 * @interface ContactCreate
 */
export interface ContactCreate {
    /**
     * 
     * @type {string}
     * @memberof ContactCreate
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof ContactCreate
     */
    email?: string | null;
    /**
     * 
     * @type {string}
     * @memberof ContactCreate
     */
    phone?: string | null;
    /**
     * Only `consented` contacts receive marketing. Say `consented` only if you can show they did.
     * @type {string}
     * @memberof ContactCreate
     */
    state?: ContactCreateStateEnum;
    /**
     * Where consent came from. Worth recording.
     * @type {string}
     * @memberof ContactCreate
     */
    consentSource?: string | null;
    /**
     * 
     * @type {Array<string>}
     * @memberof ContactCreate
     */
    tags?: Array<string>;
    /**
     * Your own fields, usable as `{{ variables }}` in a body.
     * @type {{ [key: string]: string; }}
     * @memberof ContactCreate
     */
    fields?: { [key: string]: string; };
}


/**
 * @export
 */
export const ContactCreateStateEnum = {
    Consented: 'consented',
    Pending: 'pending'
} as const;
export type ContactCreateStateEnum = typeof ContactCreateStateEnum[keyof typeof ContactCreateStateEnum];

/**
 * 
 * @export
 * @interface CreateContact201Response
 */
export interface CreateContact201Response {
    /**
     * 
     * @type {CreateContact201ResponseData}
     * @memberof CreateContact201Response
     */
    data: CreateContact201ResponseData;
}
/**
 * 
 * @export
 * @interface CreateContact201ResponseData
 */
export interface CreateContact201ResponseData {
    /**
     * 
     * @type {string}
     * @memberof CreateContact201ResponseData
     */
    id: string;
}
/**
 * 
 * @export
 * @interface DeleteContact200Response
 */
export interface DeleteContact200Response {
    /**
     * 
     * @type {DeleteContact200ResponseData}
     * @memberof DeleteContact200Response
     */
    data: DeleteContact200ResponseData;
}
/**
 * 
 * @export
 * @interface DeleteContact200ResponseData
 */
export interface DeleteContact200ResponseData {
    /**
     * 
     * @type {boolean}
     * @memberof DeleteContact200ResponseData
     */
    deleted: boolean;
}
/**
 * 
 * @export
 * @interface DescribeMcp200Response
 */
export interface DescribeMcp200Response {
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof DescribeMcp200Response
     */
    data?: { [key: string]: any; };
}
/**
 * 
 * @export
 * @interface DeviceRegister
 */
export interface DeviceRegister {
    /**
     * 
     * @type {string}
     * @memberof DeviceRegister
     */
    token: string;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegister
     */
    platform: DeviceRegisterPlatformEnum;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegister
     */
    contactId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegister
     */
    appVersion?: string | null;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegister
     */
    locale?: string | null;
}


/**
 * @export
 */
export const DeviceRegisterPlatformEnum = {
    Android: 'android',
    Ios: 'ios',
    Web: 'web'
} as const;
export type DeviceRegisterPlatformEnum = typeof DeviceRegisterPlatformEnum[keyof typeof DeviceRegisterPlatformEnum];

/**
 * 
 * @export
 * @interface ErrorEnvelope
 */
export interface ErrorEnvelope {
    /**
     * 
     * @type {Error}
     * @memberof ErrorEnvelope
     */
    error: Error;
}
/**
 * 
 * @export
 * @interface GetBalances200Response
 */
export interface GetBalances200Response {
    /**
     * 
     * @type {GetBalances200ResponseData}
     * @memberof GetBalances200Response
     */
    data: GetBalances200ResponseData;
}
/**
 * 
 * @export
 * @interface GetBalances200ResponseData
 */
export interface GetBalances200ResponseData {
    /**
     * 
     * @type {Array<Balance>}
     * @memberof GetBalances200ResponseData
     */
    balances: Array<Balance>;
}
/**
 * 
 * @export
 * @interface GetNotification200Response
 */
export interface GetNotification200Response {
    /**
     * 
     * @type {Notification}
     * @memberof GetNotification200Response
     */
    data: Notification;
}
/**
 * 
 * @export
 * @interface ListContacts200Response
 */
export interface ListContacts200Response {
    /**
     * 
     * @type {ListContacts200ResponseData}
     * @memberof ListContacts200Response
     */
    data: ListContacts200ResponseData;
}
/**
 * 
 * @export
 * @interface ListContacts200ResponseData
 */
export interface ListContacts200ResponseData {
    /**
     * 
     * @type {Array<Contact>}
     * @memberof ListContacts200ResponseData
     */
    contacts: Array<Contact>;
}
/**
 * 
 * @export
 * @interface ListNotifications200Response
 */
export interface ListNotifications200Response {
    /**
     * 
     * @type {ListNotifications200ResponseData}
     * @memberof ListNotifications200Response
     */
    data: ListNotifications200ResponseData;
    /**
     * 
     * @type {ListNotifications200ResponseMeta}
     * @memberof ListNotifications200Response
     */
    meta: ListNotifications200ResponseMeta;
}
/**
 * 
 * @export
 * @interface ListNotifications200ResponseData
 */
export interface ListNotifications200ResponseData {
    /**
     * 
     * @type {Array<NotificationSummary>}
     * @memberof ListNotifications200ResponseData
     */
    notifications: Array<NotificationSummary>;
}
/**
 * 
 * @export
 * @interface ListNotifications200ResponseMeta
 */
export interface ListNotifications200ResponseMeta {
    /**
     * Null on the last page.
     * @type {string}
     * @memberof ListNotifications200ResponseMeta
     */
    nextCursor?: string | null;
}
/**
 * `code` is stable and worth branching on. `message` is written for a person and may change, so do
 * not match on it.
 * 
 * @export
 * @interface ModelError
 */
export interface ModelError {
    /**
     * 
     * @type {string}
     * @memberof ModelError
     */
    code: ModelErrorCodeEnum;
    /**
     * 
     * @type {string}
     * @memberof ModelError
     */
    message: string;
    /**
     * Validation errors by field name.
     * @type {{ [key: string]: Array<string>; }}
     * @memberof ModelError
     */
    fields?: { [key: string]: Array<string>; };
    /**
     * Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED.
     * @type {{ [key: string]: any; }}
     * @memberof ModelError
     */
    detail?: { [key: string]: any; };
    /**
     * Quote this when asking us about a request.
     * @type {string}
     * @memberof ModelError
     */
    requestId?: string;
}


/**
 * @export
 */
export const ModelErrorCodeEnum = {
    ValidationFailed: 'VALIDATION_FAILED',
    Unauthenticated: 'UNAUTHENTICATED',
    Forbidden: 'FORBIDDEN',
    NotFound: 'NOT_FOUND',
    Conflict: 'CONFLICT',
    QuotaExceeded: 'QUOTA_EXCEEDED',
    RateLimited: 'RATE_LIMITED',
    ProviderError: 'PROVIDER_ERROR',
    Internal: 'INTERNAL'
} as const;
export type ModelErrorCodeEnum = typeof ModelErrorCodeEnum[keyof typeof ModelErrorCodeEnum];

/**
 * 
 * @export
 * @interface Notification
 */
export interface Notification {
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    kind: string;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    name?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    status: string;
    /**
     * Billable units, per channel.
     * @type {{ [key: string]: number; }}
     * @memberof Notification
     */
    reservedUnits: { [key: string]: number; };
    /**
     * Billable units, per channel.
     * @type {{ [key: string]: number; }}
     * @memberof Notification
     */
    settledUnits: { [key: string]: number; };
    /**
     * 
     * @type {number}
     * @memberof Notification
     */
    recipientCount: number;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    scheduledAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    startedAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    finishedAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    failureReason?: string | null;
    /**
     * The JSON you sent
     * @type {string}
     * @memberof Notification
     */
    metadata?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Notification
     */
    createdAt: string;
    /**
     * How many deliveries are in each state.
     * @type {{ [key: string]: number; }}
     * @memberof Notification
     */
    deliveries: { [key: string]: number; };
}
/**
 * 
 * @export
 * @interface NotificationSummary
 */
export interface NotificationSummary {
    /**
     * 
     * @type {string}
     * @memberof NotificationSummary
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof NotificationSummary
     */
    kind: string;
    /**
     * 
     * @type {string}
     * @memberof NotificationSummary
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof NotificationSummary
     */
    status: string;
    /**
     * 
     * @type {number}
     * @memberof NotificationSummary
     */
    recipientCount: number;
    /**
     * 
     * @type {string}
     * @memberof NotificationSummary
     */
    createdAt: string;
}
/**
 * 
 * @export
 * @interface Quote
 */
export interface Quote {
    /**
     * 
     * @type {Array<Channel>}
     * @memberof Quote
     */
    channels: Array<Channel>;
    /**
     * A row per recipient per channel. Large: quoting a fifty-thousand-contact audience returns
     * fifty thousand rows, so read `recipientCount` unless you need the rows.
     * 
     * @type {{ [key: string]: Array<QuotedRecipient>; }}
     * @memberof Quote
     */
    recipients: { [key: string]: Array<QuotedRecipient>; };
    /**
     * Billable units, per channel.
     * @type {{ [key: string]: number; }}
     * @memberof Quote
     */
    units: { [key: string]: number; };
    /**
     * 
     * @type {number}
     * @memberof Quote
     */
    recipientCount: number;
    /**
     * 
     * @type {Array<SkippedRecipient>}
     * @memberof Quote
     */
    skipped: Array<SkippedRecipient>;
    /**
     * Everything standing in the way. Those with `skippable: false` stop the send.
     * @type {Array<Blocker>}
     * @memberof Quote
     */
    blockers: Array<Blocker>;
    /**
     * 
     * @type {QuoteSms}
     * @memberof Quote
     */
    sms: QuoteSms;
    /**
     * 
     * @type {QuoteVariants}
     * @memberof Quote
     */
    variants: QuoteVariants;
    /**
     * The links that will be rewritten. Empty when tracking is off or nothing can be tracked.
     * @type {Array<string>}
     * @memberof Quote
     */
    trackedLinks: Array<string>;
    /**
     * 
     * @type {QuoteHeldUntil}
     * @memberof Quote
     */
    heldUntil: QuoteHeldUntil;
    /**
     * What the units would cost at the published top-up rate
     * @type {number}
     * @memberof Quote
     */
    estimateMinor: number;
    /**
     * 
     * @type {string}
     * @memberof Quote
     */
    currency: string;
}
/**
 * Set when quiet hours will hold this send, with when it would go and in which zone.
 * @export
 * @interface QuoteHeldUntil
 */
export interface QuoteHeldUntil {
    /**
     * 
     * @type {string}
     * @memberof QuoteHeldUntil
     */
    at?: string;
    /**
     * 
     * @type {string}
     * @memberof QuoteHeldUntil
     */
    timeZone?: string;
}
/**
 * 
 * @export
 * @interface QuoteSend200Response
 */
export interface QuoteSend200Response {
    /**
     * 
     * @type {Quote}
     * @memberof QuoteSend200Response
     */
    data: Quote;
}
/**
 * 
 * @export
 * @interface QuoteSms
 */
export interface QuoteSms {
    /**
     * 
     * @type {string}
     * @memberof QuoteSms
     */
    encoding: QuoteSmsEncodingEnum;
    /**
     * 
     * @type {number}
     * @memberof QuoteSms
     */
    segments: number;
}


/**
 * @export
 */
export const QuoteSmsEncodingEnum = {
    Gsm7: 'GSM-7',
    Unicode: 'Unicode'
} as const;
export type QuoteSmsEncodingEnum = typeof QuoteSmsEncodingEnum[keyof typeof QuoteSmsEncodingEnum];

/**
 * How the audience divides between the two arms of an A/B test.
 * @export
 * @interface QuoteVariants
 */
export interface QuoteVariants {
    /**
     * 
     * @type {number}
     * @memberof QuoteVariants
     */
    a: number;
    /**
     * 
     * @type {number}
     * @memberof QuoteVariants
     */
    b: number;
}
/**
 * 
 * @export
 * @interface QuotedRecipient
 */
export interface QuotedRecipient {
    /**
     * 
     * @type {string}
     * @memberof QuotedRecipient
     */
    contactId: string | null;
    /**
     * 
     * @type {string}
     * @memberof QuotedRecipient
     */
    address: string;
    /**
     * 
     * @type {Channel}
     * @memberof QuotedRecipient
     */
    channel: Channel;
    /**
     * 
     * @type {string}
     * @memberof QuotedRecipient
     */
    name: string;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof QuotedRecipient
     */
    fields: { [key: string]: any; };
    /**
     * What this one recipient costs
     * @type {number}
     * @memberof QuotedRecipient
     */
    units: number;
    /**
     * 
     * @type {string}
     * @memberof QuotedRecipient
     */
    variant: QuotedRecipientVariantEnum;
}


/**
 * @export
 */
export const QuotedRecipientVariantEnum = {
    A: 'A',
    B: 'B'
} as const;
export type QuotedRecipientVariantEnum = typeof QuotedRecipientVariantEnum[keyof typeof QuotedRecipientVariantEnum];

/**
 * Who the send goes to. Give exactly one of these three.
 * @export
 * @interface Recipients
 */
export interface Recipients {
    /**
     * 
     * @type {Array<string>}
     * @memberof Recipients
     */
    contactIds?: Array<string>;
    /**
     * Phone numbers or email addresses, for people who are not saved contacts.
     * @type {Array<string>}
     * @memberof Recipients
     */
    addresses?: Array<string>;
    /**
     * 
     * @type {string}
     * @memberof Recipients
     */
    audienceId?: string;
}
/**
 * 
 * @export
 * @interface RegisterDevice201Response
 */
export interface RegisterDevice201Response {
    /**
     * 
     * @type {RegisterDevice201ResponseData}
     * @memberof RegisterDevice201Response
     */
    data: RegisterDevice201ResponseData;
}
/**
 * 
 * @export
 * @interface RegisterDevice201ResponseData
 */
export interface RegisterDevice201ResponseData {
    /**
     * 
     * @type {boolean}
     * @memberof RegisterDevice201ResponseData
     */
    registered: boolean;
}
/**
 * 
 * @export
 * @interface SendNotification202Response
 */
export interface SendNotification202Response {
    /**
     * 
     * @type {SendResult}
     * @memberof SendNotification202Response
     */
    data: SendResult;
}
/**
 * 
 * @export
 * @interface SendRequest
 */
export interface SendRequest {
    /**
     * Tried in the order given. With `fallback` routing the next is used only if the previous does not work out.
     * @type {Array<Channel>}
     * @memberof SendRequest
     */
    channels: Array<Channel>;
    /**
     * 
     * @type {Recipients}
     * @memberof SendRequest
     */
    to: Recipients;
    /**
     * Required unless `templateId` is given. Supports `{{ name }}` and your own variables.
     * @type {string}
     * @memberof SendRequest
     */
    body?: string;
    /**
     * Email only.
     * @type {string}
     * @memberof SendRequest
     */
    subject?: string;
    /**
     * 
     * @type {string}
     * @memberof SendRequest
     */
    templateId?: string;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof SendRequest
     */
    variables?: { [key: string]: any; };
    /**
     * Marketing only reaches contacts who consented to it and is held during quiet hours.
     * Transactional is neither.
     * 
     * A marketing email also carries an unsubscribe link, added for you: a line at the end of the
     * body, and the `List-Unsubscribe` and `List-Unsubscribe-Post` headers a mail client reads to
     * show its own unsubscribe button. Following it suppresses that address and marks the contact
     * unsubscribed, so later sends skip them. Nothing is added to a transactional message, and
     * nothing is added to SMS, which is charged by segment and would cost more than was quoted.
     * 
     * @type {string}
     * @memberof SendRequest
     */
    purpose?: SendRequestPurposeEnum;
    /**
     * 
     * @type {string}
     * @memberof SendRequest
     */
    routing?: SendRequestRoutingEnum;
    /**
     * With `fallback` routing, what counts as not working out. A refusal falls back whichever is
     * chosen; `timeout` also falls back when nothing was delivered within the wait, and
     * `unacknowledged` when nothing was read, which needs your own read callback wired up.
     * 
     * @type {string}
     * @memberof SendRequest
     */
    fallbackOn?: SendRequestFallbackOnEnum;
    /**
     * 
     * @type {number}
     * @memberof SendRequest
     */
    fallbackWaitSeconds?: number;
    /**
     * An A/B test's second message. Each arm is costed from its own body, so a longer B costs more.
     * @type {string}
     * @memberof SendRequest
     */
    variantBody?: string;
    /**
     * 
     * @type {string}
     * @memberof SendRequest
     */
    variantSubject?: string;
    /**
     * The share of the audience that gets variant B.
     * @type {number}
     * @memberof SendRequest
     */
    splitPercent?: number;
    /**
     * Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than
     * the one you typed, so it can add an SMS segment; the quote counts what will really be sent.
     * 
     * @type {boolean}
     * @memberof SendRequest
     */
    trackLinks?: boolean;
    /**
     * 24-hour local time, e.g. "22:00". Both ends are needed or neither applies.
     * @type {string}
     * @memberof SendRequest
     */
    quietStart?: string | null;
    /**
     * 
     * @type {string}
     * @memberof SendRequest
     */
    quietEnd?: string | null;
    /**
     * An IANA zone, e.g. "Africa/Harare".
     * @type {string}
     * @memberof SendRequest
     */
    timezone?: string | null;
    /**
     * Email only. Ids of files already uploaded to this workspace.
     * @type {Array<string>}
     * @memberof SendRequest
     */
    attachmentIds?: Array<string>;
    /**
     * Push only.
     * @type {string}
     * @memberof SendRequest
     */
    deepLink?: string;
    /**
     * Push only. How long it stays worth delivering.
     * @type {number}
     * @memberof SendRequest
     */
    ttlSeconds?: number;
    /**
     * Push only.
     * @type {string}
     * @memberof SendRequest
     */
    priority?: SendRequestPriorityEnum;
    /**
     * Push only. The number on the app icon. Zero is meaningful: it clears the badge.
     * @type {number}
     * @memberof SendRequest
     */
    badge?: number;
    /**
     * Push only. A picture shown with the notification.
     * @type {string}
     * @memberof SendRequest
     */
    imageUrl?: string;
    /**
     * ISO 8601. Omit to send now.
     * @type {string}
     * @memberof SendRequest
     */
    scheduledAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof SendRequest
     */
    callbackUrl?: string;
    /**
     * Yours. Returned on the send and on webhooks about it.
     * @type {{ [key: string]: any; }}
     * @memberof SendRequest
     */
    metadata?: { [key: string]: any; };
    /**
     * Also seeds the A/B division
     * @type {string}
     * @memberof SendRequest
     */
    name?: string;
}


/**
 * @export
 */
export const SendRequestPurposeEnum = {
    Marketing: 'marketing',
    Transactional: 'transactional'
} as const;
export type SendRequestPurposeEnum = typeof SendRequestPurposeEnum[keyof typeof SendRequestPurposeEnum];

/**
 * @export
 */
export const SendRequestRoutingEnum = {
    Parallel: 'parallel',
    Fallback: 'fallback'
} as const;
export type SendRequestRoutingEnum = typeof SendRequestRoutingEnum[keyof typeof SendRequestRoutingEnum];

/**
 * @export
 */
export const SendRequestFallbackOnEnum = {
    Failure: 'failure',
    Timeout: 'timeout',
    Unacknowledged: 'unacknowledged'
} as const;
export type SendRequestFallbackOnEnum = typeof SendRequestFallbackOnEnum[keyof typeof SendRequestFallbackOnEnum];

/**
 * @export
 */
export const SendRequestPriorityEnum = {
    High: 'high',
    Normal: 'normal'
} as const;
export type SendRequestPriorityEnum = typeof SendRequestPriorityEnum[keyof typeof SendRequestPriorityEnum];

/**
 * 
 * @export
 * @interface SendResult
 */
export interface SendResult {
    /**
     * 
     * @type {string}
     * @memberof SendResult
     */
    id: string;
    /**
     * `running`, `scheduled` when held or scheduled, or `pending_approval`.
     * @type {string}
     * @memberof SendResult
     */
    status: string;
    /**
     * 
     * @type {string}
     * @memberof SendResult
     */
    mode: SendResultModeEnum;
    /**
     * 
     * @type {number}
     * @memberof SendResult
     */
    recipients: number;
    /**
     * Billable units, per channel.
     * @type {{ [key: string]: number; }}
     * @memberof SendResult
     */
    units: { [key: string]: number; };
    /**
     * How many recipients were left out. The quote says why.
     * @type {number}
     * @memberof SendResult
     */
    skipped: number;
    /**
     * Things that did not stop the send.
     * @type {Array<Blocker>}
     * @memberof SendResult
     */
    warnings: Array<Blocker>;
}


/**
 * @export
 */
export const SendResultModeEnum = {
    Live: 'live',
    Sandbox: 'sandbox'
} as const;
export type SendResultModeEnum = typeof SendResultModeEnum[keyof typeof SendResultModeEnum];

/**
 * 
 * @export
 * @interface SkippedRecipient
 */
export interface SkippedRecipient {
    /**
     * 
     * @type {string}
     * @memberof SkippedRecipient
     */
    address: string;
    /**
     * 
     * @type {string}
     * @memberof SkippedRecipient
     */
    reason: string;
}
/**
 * 
 * @export
 * @interface StartVerification201Response
 */
export interface StartVerification201Response {
    /**
     * 
     * @type {Verification}
     * @memberof StartVerification201Response
     */
    data: Verification;
}
/**
 * 
 * @export
 * @interface Verification
 */
export interface Verification {
    /**
     * 
     * @type {string}
     * @memberof Verification
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof Verification
     */
    channel: VerificationChannelEnum;
    /**
     * 
     * @type {string}
     * @memberof Verification
     */
    to: string;
    /**
     * 
     * @type {string}
     * @memberof Verification
     */
    expiresAt: string;
    /**
     * Only with a sandbox key. Never returned for a live send, to anyone, including the workspace that asked.
     * @type {string}
     * @memberof Verification
     */
    sandboxCode?: string;
}


/**
 * @export
 */
export const VerificationChannelEnum = {
    Sms: 'sms',
    Email: 'email'
} as const;
export type VerificationChannelEnum = typeof VerificationChannelEnum[keyof typeof VerificationChannelEnum];

/**
 * 
 * @export
 * @interface VerificationCheck
 */
export interface VerificationCheck {
    /**
     * 
     * @type {string}
     * @memberof VerificationCheck
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof VerificationCheck
     */
    state: VerificationCheckStateEnum;
    /**
     * Present while still pending.
     * @type {number}
     * @memberof VerificationCheck
     */
    attemptsLeft?: number;
}


/**
 * @export
 */
export const VerificationCheckStateEnum = {
    Pending: 'pending',
    Verified: 'verified',
    Expired: 'expired',
    Locked: 'locked'
} as const;
export type VerificationCheckStateEnum = typeof VerificationCheckStateEnum[keyof typeof VerificationCheckStateEnum];

/**
 * 
 * @export
 * @interface VerificationRequest
 */
export interface VerificationRequest {
    /**
     * 
     * @type {string}
     * @memberof VerificationRequest
     */
    channel: VerificationRequestChannelEnum;
    /**
     * 
     * @type {string}
     * @memberof VerificationRequest
     */
    to: string;
    /**
     * 
     * @type {number}
     * @memberof VerificationRequest
     */
    length?: number;
    /**
     * 
     * @type {number}
     * @memberof VerificationRequest
     */
    expiresInSeconds?: number;
    /**
     * Use `{{code}}` and `{{minutes}}`. Defaults to "Your code is {{code}}. It expires in {{minutes}} minutes."
     * @type {string}
     * @memberof VerificationRequest
     */
    template?: string;
    /**
     * The name of one of your active verification flows, set up in the console under Verification.
     * Its expiry, attempt ceiling and rate apply to this challenge.
     * 
     * A name matching no active flow is refused with `NOT_FOUND` rather than falling back to the
     * defaults, since a silent fallback is how somebody comes to believe a code allows three
     * guesses when it allows five. A flow's rate applies in addition to the built-in ceiling of
     * five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen
     * it.
     * 
     * @type {string}
     * @memberof VerificationRequest
     */
    flow?: string;
}


/**
 * @export
 */
export const VerificationRequestChannelEnum = {
    Sms: 'sms',
    Email: 'email'
} as const;
export type VerificationRequestChannelEnum = typeof VerificationRequestChannelEnum[keyof typeof VerificationRequestChannelEnum];

