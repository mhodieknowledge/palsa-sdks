/* tslint:disable */
/* eslint-disable */
/**
 * 
 * @export
 * @interface AddSendingDomain201Response
 */
export interface AddSendingDomain201Response {
    /**
     * 
     * @type {SendingDomain}
     * @memberof AddSendingDomain201Response
     */
    data: SendingDomain;
}
/**
 * 
 * @export
 * @interface AddSendingDomainRequest
 */
export interface AddSendingDomainRequest {
    /**
     * 
     * @type {string}
     * @memberof AddSendingDomainRequest
     */
    domain: string;
}
/**
 * 
 * @export
 * @interface AndroidPushOptions
 */
export interface AndroidPushOptions {
    /**
     * The Android notification channel.
     * @type {string}
     * @memberof AndroidPushOptions
     */
    channelId?: string;
    /**
     * A notification with the same tag replaces the one shown.
     * @type {string}
     * @memberof AndroidPushOptions
     */
    tag?: string;
    /**
     * 
     * @type {string}
     * @memberof AndroidPushOptions
     */
    color?: string;
}
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
 * @interface ConfirmPushAppOwnershipRequest
 */
export interface ConfirmPushAppOwnershipRequest {
    /**
     * 
     * @type {string}
     * @memberof ConfirmPushAppOwnershipRequest
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
 * @interface Device
 */
export interface Device {
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    contactId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    appId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    platform: DevicePlatformEnum;
    /**
     * The last eight characters of the token. The token itself is never returned.
     * @type {string}
     * @memberof Device
     */
    tokenEnd: string;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    appVersion?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    locale?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    lastSeenAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    tokenRefreshedAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    invalidatedAt?: string | null;
    /**
     * unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed.
     * @type {string}
     * @memberof Device
     */
    invalidReason?: string | null;
    /**
     * 
     * @type {string}
     * @memberof Device
     */
    createdAt: string;
}


/**
 * @export
 */
export const DevicePlatformEnum = {
    Android: 'android',
    Ios: 'ios',
    Web: 'web'
} as const;
export type DevicePlatformEnum = typeof DevicePlatformEnum[keyof typeof DevicePlatformEnum];

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
     * The push app the token belongs to. Default the workspace's default app.
     * @type {string}
     * @memberof DeviceRegister
     */
    appId?: string | null;
    /**
     * The token this one replaces, from the app's token-refresh callback. The device keeps its id, contact and topics.
     * @type {string}
     * @memberof DeviceRegister
     */
    previousToken?: string | null;
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
 * @interface DeviceRegistered
 */
export interface DeviceRegistered {
    /**
     * 
     * @type {boolean}
     * @memberof DeviceRegistered
     */
    registered: boolean;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegistered
     */
    deviceId: string;
    /**
     * 
     * @type {string}
     * @memberof DeviceRegistered
     */
    appId?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof DeviceRegistered
     */
    refreshed: boolean;
}
/**
 * 
 * @export
 * @interface DeviceTargets
 */
export interface DeviceTargets {
    /**
     * 
     * @type {Array<string>}
     * @memberof DeviceTargets
     */
    deviceIds?: Array<string>;
    /**
     * 
     * @type {Array<string>}
     * @memberof DeviceTargets
     */
    tokens?: Array<string>;
    /**
     * 
     * @type {Array<string>}
     * @memberof DeviceTargets
     */
    contactIds?: Array<string>;
}
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
 * @interface InlineObject
 */
export interface InlineObject {
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof InlineObject
     */
    data: { [key: string]: any; };
}
/**
 * 
 * @export
 * @interface InlineObject1
 */
export interface InlineObject1 {
    /**
     * 
     * @type {PushApp}
     * @memberof InlineObject1
     */
    data: PushApp;
}
/**
 * 
 * @export
 * @interface InlineObject2
 */
export interface InlineObject2 {
    /**
     * 
     * @type {InlineObject2Data}
     * @memberof InlineObject2
     */
    data: InlineObject2Data;
}
/**
 * 
 * @export
 * @interface InlineObject2Data
 */
export interface InlineObject2Data {
    /**
     * 
     * @type {string}
     * @memberof InlineObject2Data
     */
    topic: string;
    /**
     * 
     * @type {number}
     * @memberof InlineObject2Data
     */
    subscribed?: number;
    /**
     * 
     * @type {number}
     * @memberof InlineObject2Data
     */
    unsubscribed?: number;
    /**
     * 
     * @type {Array<InlineObject2DataFailedInner>}
     * @memberof InlineObject2Data
     */
    failed: Array<InlineObject2DataFailedInner>;
}
/**
 * 
 * @export
 * @interface InlineObject2DataFailedInner
 */
export interface InlineObject2DataFailedInner {
    /**
     * 
     * @type {string}
     * @memberof InlineObject2DataFailedInner
     */
    deviceId: string;
    /**
     * 
     * @type {string}
     * @memberof InlineObject2DataFailedInner
     */
    reason: string;
}
/**
 * 
 * @export
 * @interface IosPushOptions
 */
export interface IosPushOptions {
    /**
     * Groups notifications together.
     * @type {string}
     * @memberof IosPushOptions
     */
    threadId?: string;
    /**
     * The notification category
     * @type {string}
     * @memberof IosPushOptions
     */
    category?: string;
    /**
     * 
     * @type {string}
     * @memberof IosPushOptions
     */
    interruptionLevel?: IosPushOptionsInterruptionLevelEnum;
}


/**
 * @export
 */
export const IosPushOptionsInterruptionLevelEnum = {
    Passive: 'passive',
    Active: 'active',
    TimeSensitive: 'time-sensitive'
} as const;
export type IosPushOptionsInterruptionLevelEnum = typeof IosPushOptionsInterruptionLevelEnum[keyof typeof IosPushOptionsInterruptionLevelEnum];

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
 * @interface ListDevices200Response
 */
export interface ListDevices200Response {
    /**
     * 
     * @type {ListDevices200ResponseData}
     * @memberof ListDevices200Response
     */
    data: ListDevices200ResponseData;
}
/**
 * 
 * @export
 * @interface ListDevices200ResponseData
 */
export interface ListDevices200ResponseData {
    /**
     * 
     * @type {Array<Device>}
     * @memberof ListDevices200ResponseData
     */
    devices: Array<Device>;
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
 * 
 * @export
 * @interface ListPushApps200Response
 */
export interface ListPushApps200Response {
    /**
     * 
     * @type {ListPushApps200ResponseData}
     * @memberof ListPushApps200Response
     */
    data: ListPushApps200ResponseData;
}
/**
 * 
 * @export
 * @interface ListPushApps200ResponseData
 */
export interface ListPushApps200ResponseData {
    /**
     * 
     * @type {Array<PushApp>}
     * @memberof ListPushApps200ResponseData
     */
    apps: Array<PushApp>;
}
/**
 * 
 * @export
 * @interface ListPushTopics200Response
 */
export interface ListPushTopics200Response {
    /**
     * 
     * @type {ListPushTopics200ResponseData}
     * @memberof ListPushTopics200Response
     */
    data: ListPushTopics200ResponseData;
}
/**
 * 
 * @export
 * @interface ListPushTopics200ResponseData
 */
export interface ListPushTopics200ResponseData {
    /**
     * 
     * @type {Array<ListPushTopics200ResponseDataTopicsInner>}
     * @memberof ListPushTopics200ResponseData
     */
    topics: Array<ListPushTopics200ResponseDataTopicsInner>;
}
/**
 * 
 * @export
 * @interface ListPushTopics200ResponseDataTopicsInner
 */
export interface ListPushTopics200ResponseDataTopicsInner {
    /**
     * 
     * @type {string}
     * @memberof ListPushTopics200ResponseDataTopicsInner
     */
    topic: string;
    /**
     * 
     * @type {number}
     * @memberof ListPushTopics200ResponseDataTopicsInner
     */
    devices: number;
}
/**
 * 
 * @export
 * @interface ListSendingDomains200Response
 */
export interface ListSendingDomains200Response {
    /**
     * 
     * @type {ListSendingDomains200ResponseData}
     * @memberof ListSendingDomains200Response
     */
    data: ListSendingDomains200ResponseData;
}
/**
 * 
 * @export
 * @interface ListSendingDomains200ResponseData
 */
export interface ListSendingDomains200ResponseData {
    /**
     * 
     * @type {Array<SendingDomain>}
     * @memberof ListSendingDomains200ResponseData
     */
    domains: Array<SendingDomain>;
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
 * @interface PushApp
 */
export interface PushApp {
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    projectId: string;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    authMode: PushAppAuthModeEnum;
    /**
     * The uploaded key's service account. The key itself is never returned.
     * @type {string}
     * @memberof PushApp
     */
    clientEmail?: string | null;
    /**
     * Delegated only. The account to grant the role to.
     * @type {string}
     * @memberof PushApp
     */
    grantTo?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    role?: string;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    androidPackage?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    iosBundleId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    webOrigin?: string | null;
    /**
     * Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved.
     * @type {string}
     * @memberof PushApp
     */
    status: PushAppStatusEnum;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    message?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof PushApp
     */
    isDefault: boolean;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    verifiedAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    checkedAt?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    createdAt: string;
    /**
     * 
     * @type {string}
     * @memberof PushApp
     */
    updatedAt: string;
}


/**
 * @export
 */
export const PushAppAuthModeEnum = {
    ServiceAccount: 'service_account',
    Delegated: 'delegated'
} as const;
export type PushAppAuthModeEnum = typeof PushAppAuthModeEnum[keyof typeof PushAppAuthModeEnum];

/**
 * @export
 */
export const PushAppStatusEnum = {
    Pending: 'pending',
    AwaitingDevice: 'awaiting_device',
    Verified: 'verified',
    Failed: 'failed'
} as const;
export type PushAppStatusEnum = typeof PushAppStatusEnum[keyof typeof PushAppStatusEnum];

/**
 * 
 * @export
 * @interface PushAppCreate
 */
export interface PushAppCreate {
    /**
     * 
     * @type {string}
     * @memberof PushAppCreate
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof PushAppCreate
     */
    authMode: PushAppCreateAuthModeEnum;
    /**
     * Required for delegated.
     * @type {string}
     * @memberof PushAppCreate
     */
    projectId?: string;
    /**
     * The whole service-account JSON file as a string. Required for service_account.
     * @type {string}
     * @memberof PushAppCreate
     */
    serviceAccount?: string;
    /**
     * 
     * @type {string}
     * @memberof PushAppCreate
     */
    androidPackage?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushAppCreate
     */
    iosBundleId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof PushAppCreate
     */
    webOrigin?: string | null;
}


/**
 * @export
 */
export const PushAppCreateAuthModeEnum = {
    ServiceAccount: 'service_account',
    Delegated: 'delegated'
} as const;
export type PushAppCreateAuthModeEnum = typeof PushAppCreateAuthModeEnum[keyof typeof PushAppCreateAuthModeEnum];

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
    /**
     * Push only, and on push alone. Every device subscribed to this topic, as one delivery.
     * @type {string}
     * @memberof Recipients
     */
    topic?: string;
}
/**
 * 
 * @export
 * @interface RegisterDevice201Response
 */
export interface RegisterDevice201Response {
    /**
     * 
     * @type {DeviceRegistered}
     * @memberof RegisterDevice201Response
     */
    data: DeviceRegistered;
}
/**
 * 
 * @export
 * @interface RemoveSendingDomain200Response
 */
export interface RemoveSendingDomain200Response {
    /**
     * 
     * @type {RemoveSendingDomain200ResponseData}
     * @memberof RemoveSendingDomain200Response
     */
    data: RemoveSendingDomain200ResponseData;
}
/**
 * 
 * @export
 * @interface RemoveSendingDomain200ResponseData
 */
export interface RemoveSendingDomain200ResponseData {
    /**
     * 
     * @type {boolean}
     * @memberof RemoveSendingDomain200ResponseData
     */
    removed: boolean;
}
/**
 * 
 * @export
 * @interface ReplacePushAppKeyRequest
 */
export interface ReplacePushAppKeyRequest {
    /**
     * 
     * @type {string}
     * @memberof ReplacePushAppKeyRequest
     */
    serviceAccount: string;
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
 * @interface SendPushAppOwnershipCodeRequest
 */
export interface SendPushAppOwnershipCodeRequest {
    /**
     * 
     * @type {string}
     * @memberof SendPushAppOwnershipCodeRequest
     */
    deviceToken: string;
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
     * Push only. Which push app to send through. Default the workspace's default app; a contact's device of that app is used.
     * @type {string}
     * @memberof SendRequest
     */
    appId?: string;
    /**
     * Push only. `default`, or the name of a sound bundled with the app.
     * @type {string}
     * @memberof SendRequest
     */
    sound?: string;
    /**
     * Push only. A newer message with the same key replaces an undelivered older one, on every platform.
     * @type {string}
     * @memberof SendRequest
     */
    collapseKey?: string;
    /**
     * Push only. Key/value strings for the app. Keys may not be from, notification, message_type, or start with google or gcm.
     * @type {{ [key: string]: string; }}
     * @memberof SendRequest
     */
    data?: { [key: string]: string; };
    /**
     * Push only. Show nothing and wake the app in the background with `data`. Apple delivers these at low priority and may throttle them. `body` may then be omitted.
     * @type {boolean}
     * @memberof SendRequest
     */
    silent?: boolean;
    /**
     * 
     * @type {AndroidPushOptions}
     * @memberof SendRequest
     */
    android?: AndroidPushOptions;
    /**
     * 
     * @type {IosPushOptions}
     * @memberof SendRequest
     */
    ios?: IosPushOptions;
    /**
     * 
     * @type {WebPushOptions}
     * @memberof SendRequest
     */
    web?: WebPushOptions;
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
 * @interface SendingDomain
 */
export interface SendingDomain {
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    domain: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    status: SendingDomainStatusEnum;
    /**
     * What the state means
     * @type {string}
     * @memberof SendingDomain
     */
    message: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    dkimStatus?: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    mailFromDomain?: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomain
     */
    mailFromStatus?: string;
    /**
     * 
     * @type {Array<SendingDomainRecordsInner>}
     * @memberof SendingDomain
     */
    records: Array<SendingDomainRecordsInner>;
    /**
     * 
     * @type {Date}
     * @memberof SendingDomain
     */
    lastCheckedAt?: Date;
    /**
     * 
     * @type {Date}
     * @memberof SendingDomain
     */
    nextCheckAt?: Date;
    /**
     * 
     * @type {Date}
     * @memberof SendingDomain
     */
    verifiedAt?: Date;
    /**
     * 
     * @type {Date}
     * @memberof SendingDomain
     */
    createdAt: Date;
}


/**
 * @export
 */
export const SendingDomainStatusEnum = {
    AwaitingProvider: 'awaiting_provider',
    PendingDns: 'pending_dns',
    Verified: 'verified',
    Failed: 'failed',
    Suspended: 'suspended'
} as const;
export type SendingDomainStatusEnum = typeof SendingDomainStatusEnum[keyof typeof SendingDomainStatusEnum];

/**
 * 
 * @export
 * @interface SendingDomainRecordsInner
 */
export interface SendingDomainRecordsInner {
    /**
     * 
     * @type {string}
     * @memberof SendingDomainRecordsInner
     */
    purpose: SendingDomainRecordsInnerPurposeEnum;
    /**
     * 
     * @type {string}
     * @memberof SendingDomainRecordsInner
     */
    type: SendingDomainRecordsInnerTypeEnum;
    /**
     * 
     * @type {string}
     * @memberof SendingDomainRecordsInner
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof SendingDomainRecordsInner
     */
    value: string;
    /**
     * 
     * @type {number}
     * @memberof SendingDomainRecordsInner
     */
    priority?: number;
    /**
     * 
     * @type {boolean}
     * @memberof SendingDomainRecordsInner
     */
    required: boolean;
}


/**
 * @export
 */
export const SendingDomainRecordsInnerPurposeEnum = {
    Dkim: 'dkim',
    MailFromMx: 'mail_from_mx',
    MailFromSpf: 'mail_from_spf',
    Dmarc: 'dmarc'
} as const;
export type SendingDomainRecordsInnerPurposeEnum = typeof SendingDomainRecordsInnerPurposeEnum[keyof typeof SendingDomainRecordsInnerPurposeEnum];

/**
 * @export
 */
export const SendingDomainRecordsInnerTypeEnum = {
    Cname: 'CNAME',
    Mx: 'MX',
    Txt: 'TXT'
} as const;
export type SendingDomainRecordsInnerTypeEnum = typeof SendingDomainRecordsInnerTypeEnum[keyof typeof SendingDomainRecordsInnerTypeEnum];

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
 * @interface UnregisterDeviceRequest
 */
export interface UnregisterDeviceRequest {
    /**
     * 
     * @type {string}
     * @memberof UnregisterDeviceRequest
     */
    token: string;
}
/**
 * 
 * @export
 * @interface UpdatePushAppRequest
 */
export interface UpdatePushAppRequest {
    /**
     * 
     * @type {string}
     * @memberof UpdatePushAppRequest
     */
    name?: string;
    /**
     * Only true is accepted. Make this verified app the default.
     * @type {boolean}
     * @memberof UpdatePushAppRequest
     */
    isDefault?: boolean;
    /**
     * 
     * @type {string}
     * @memberof UpdatePushAppRequest
     */
    androidPackage?: string | null;
    /**
     * 
     * @type {string}
     * @memberof UpdatePushAppRequest
     */
    iosBundleId?: string | null;
    /**
     * 
     * @type {string}
     * @memberof UpdatePushAppRequest
     */
    webOrigin?: string | null;
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

/**
 * 
 * @export
 * @interface WebPushOptions
 */
export interface WebPushOptions {
    /**
     * 
     * @type {string}
     * @memberof WebPushOptions
     */
    icon?: string;
    /**
     * Keep it on screen until the person acts on it.
     * @type {boolean}
     * @memberof WebPushOptions
     */
    requireInteraction?: boolean;
}
