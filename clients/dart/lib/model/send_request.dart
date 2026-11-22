//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class SendRequest {
  /// Returns a new [SendRequest] instance.
  SendRequest({
    this.channels = const [],
    required this.to,
    this.body,
    this.subject,
    this.templateId,
    this.variables = const {},
    this.purpose = const SendRequestPurposeEnum._('transactional'),
    this.routing = const SendRequestRoutingEnum._('parallel'),
    this.fallbackOn = const SendRequestFallbackOnEnum._('failure'),
    this.fallbackWaitSeconds,
    this.variantBody,
    this.variantSubject,
    this.splitPercent,
    this.trackLinks = false,
    this.quietStart,
    this.quietEnd,
    this.timezone,
    this.attachmentIds = const [],
    this.deepLink,
    this.ttlSeconds,
    this.priority,
    this.badge,
    this.imageUrl,
    this.scheduledAt,
    this.callbackUrl,
    this.metadata = const {},
    this.name,
  });

  /// Tried in the order given. With `fallback` routing the next is used only if the previous does not work out.
  List<Channel> channels;

  Recipients to;

  /// Required unless `templateId` is given. Supports `{{ name }}` and your own variables.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Email only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  Map<String, Object> variables;

  /// Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the `List-Unsubscribe` and `List-Unsubscribe-Post` headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted. 
  SendRequestPurposeEnum purpose;

  SendRequestRoutingEnum routing;

  /// With `fallback` routing, what counts as not working out. A refusal falls back whichever is chosen; `timeout` also falls back when nothing was delivered within the wait, and `unacknowledged` when nothing was read, which needs your own read callback wired up. 
  SendRequestFallbackOnEnum fallbackOn;

  /// Minimum value: 1
  /// Maximum value: 604800
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fallbackWaitSeconds;

  /// An A/B test's second message. Each arm is costed from its own body, so a longer B costs more.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variantBody;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variantSubject;

  /// The share of the audience that gets variant B.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? splitPercent;

  /// Rewrites the links so a click can be attributed to a recipient. A tracked link is longer than the one you typed, so it can add an SMS segment; the quote counts what will really be sent. 
  bool trackLinks;

  /// 24-hour local time, e.g. \"22:00\". Both ends are needed or neither applies.
  String? quietStart;

  String? quietEnd;

  /// An IANA zone, e.g. \"Africa/Harare\".
  String? timezone;

  /// Email only. Ids of files already uploaded to this workspace.
  List<String> attachmentIds;

  /// Push only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deepLink;

  /// Push only. How long it stays worth delivering.
  ///
  /// Minimum value: 0
  /// Maximum value: 2419200
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlSeconds;

  /// Push only.
  SendRequestPriorityEnum? priority;

  /// Push only. The number on the app icon. Zero is meaningful: it clears the badge.
  ///
  /// Minimum value: 0
  /// Maximum value: 99999
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? badge;

  /// Push only. A picture shown with the notification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  /// ISO 8601. Omit to send now.
  String? scheduledAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callbackUrl;

  /// Yours. Returned on the send and on webhooks about it.
  Map<String, Object> metadata;

  /// Also seeds the A/B division
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendRequest &&
    _deepEquality.equals(other.channels, channels) &&
    other.to == to &&
    other.body == body &&
    other.subject == subject &&
    other.templateId == templateId &&
    _deepEquality.equals(other.variables, variables) &&
    other.purpose == purpose &&
    other.routing == routing &&
    other.fallbackOn == fallbackOn &&
    other.fallbackWaitSeconds == fallbackWaitSeconds &&
    other.variantBody == variantBody &&
    other.variantSubject == variantSubject &&
    other.splitPercent == splitPercent &&
    other.trackLinks == trackLinks &&
    other.quietStart == quietStart &&
    other.quietEnd == quietEnd &&
    other.timezone == timezone &&
    _deepEquality.equals(other.attachmentIds, attachmentIds) &&
    other.deepLink == deepLink &&
    other.ttlSeconds == ttlSeconds &&
    other.priority == priority &&
    other.badge == badge &&
    other.imageUrl == imageUrl &&
    other.scheduledAt == scheduledAt &&
    other.callbackUrl == callbackUrl &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels.hashCode) +
    (to.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (variables.hashCode) +
    (purpose.hashCode) +
    (routing.hashCode) +
    (fallbackOn.hashCode) +
    (fallbackWaitSeconds == null ? 0 : fallbackWaitSeconds!.hashCode) +
    (variantBody == null ? 0 : variantBody!.hashCode) +
    (variantSubject == null ? 0 : variantSubject!.hashCode) +
    (splitPercent == null ? 0 : splitPercent!.hashCode) +
    (trackLinks.hashCode) +
    (quietStart == null ? 0 : quietStart!.hashCode) +
    (quietEnd == null ? 0 : quietEnd!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (attachmentIds.hashCode) +
    (deepLink == null ? 0 : deepLink!.hashCode) +
    (ttlSeconds == null ? 0 : ttlSeconds!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (badge == null ? 0 : badge!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode) +
    (callbackUrl == null ? 0 : callbackUrl!.hashCode) +
    (metadata.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'SendRequest[channels=$channels, to=$to, body=$body, subject=$subject, templateId=$templateId, variables=$variables, purpose=$purpose, routing=$routing, fallbackOn=$fallbackOn, fallbackWaitSeconds=$fallbackWaitSeconds, variantBody=$variantBody, variantSubject=$variantSubject, splitPercent=$splitPercent, trackLinks=$trackLinks, quietStart=$quietStart, quietEnd=$quietEnd, timezone=$timezone, attachmentIds=$attachmentIds, deepLink=$deepLink, ttlSeconds=$ttlSeconds, priority=$priority, badge=$badge, imageUrl=$imageUrl, scheduledAt=$scheduledAt, callbackUrl=$callbackUrl, metadata=$metadata, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channels'] = this.channels;
      json[r'to'] = this.to;
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
      json[r'variables'] = this.variables;
      json[r'purpose'] = this.purpose;
      json[r'routing'] = this.routing;
      json[r'fallbackOn'] = this.fallbackOn;
    if (this.fallbackWaitSeconds != null) {
      json[r'fallbackWaitSeconds'] = this.fallbackWaitSeconds;
    } else {
      json[r'fallbackWaitSeconds'] = null;
    }
    if (this.variantBody != null) {
      json[r'variantBody'] = this.variantBody;
    } else {
      json[r'variantBody'] = null;
    }
    if (this.variantSubject != null) {
      json[r'variantSubject'] = this.variantSubject;
    } else {
      json[r'variantSubject'] = null;
    }
    if (this.splitPercent != null) {
      json[r'splitPercent'] = this.splitPercent;
    } else {
      json[r'splitPercent'] = null;
    }
      json[r'trackLinks'] = this.trackLinks;
    if (this.quietStart != null) {
      json[r'quietStart'] = this.quietStart;
    } else {
      json[r'quietStart'] = null;
    }
    if (this.quietEnd != null) {
      json[r'quietEnd'] = this.quietEnd;
    } else {
      json[r'quietEnd'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
      json[r'attachmentIds'] = this.attachmentIds;
    if (this.deepLink != null) {
      json[r'deepLink'] = this.deepLink;
    } else {
      json[r'deepLink'] = null;
    }
    if (this.ttlSeconds != null) {
      json[r'ttlSeconds'] = this.ttlSeconds;
    } else {
      json[r'ttlSeconds'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.badge != null) {
      json[r'badge'] = this.badge;
    } else {
      json[r'badge'] = null;
    }
    if (this.imageUrl != null) {
      json[r'imageUrl'] = this.imageUrl;
    } else {
      json[r'imageUrl'] = null;
    }
    if (this.scheduledAt != null) {
      json[r'scheduledAt'] = this.scheduledAt;
    } else {
      json[r'scheduledAt'] = null;
    }
    if (this.callbackUrl != null) {
      json[r'callbackUrl'] = this.callbackUrl;
    } else {
      json[r'callbackUrl'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [SendRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendRequest(
        channels: Channel.listFromJson(json[r'channels']),
        to: Recipients.fromJson(json[r'to'])!,
        body: mapValueOfType<String>(json, r'body'),
        subject: mapValueOfType<String>(json, r'subject'),
        templateId: mapValueOfType<String>(json, r'templateId'),
        variables: mapCastOfType<String, Object>(json, r'variables') ?? const {},
        purpose: SendRequestPurposeEnum.fromJson(json[r'purpose']) ?? SendRequestPurposeEnum.transactional,
        routing: SendRequestRoutingEnum.fromJson(json[r'routing']) ?? SendRequestRoutingEnum.parallel,
        fallbackOn: SendRequestFallbackOnEnum.fromJson(json[r'fallbackOn']) ?? SendRequestFallbackOnEnum.failure,
        fallbackWaitSeconds: mapValueOfType<int>(json, r'fallbackWaitSeconds'),
        variantBody: mapValueOfType<String>(json, r'variantBody'),
        variantSubject: mapValueOfType<String>(json, r'variantSubject'),
        splitPercent: mapValueOfType<int>(json, r'splitPercent'),
        trackLinks: mapValueOfType<bool>(json, r'trackLinks') ?? false,
        quietStart: mapValueOfType<String>(json, r'quietStart'),
        quietEnd: mapValueOfType<String>(json, r'quietEnd'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        attachmentIds: json[r'attachmentIds'] is Iterable
            ? (json[r'attachmentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        deepLink: mapValueOfType<String>(json, r'deepLink'),
        ttlSeconds: mapValueOfType<int>(json, r'ttlSeconds'),
        priority: SendRequestPriorityEnum.fromJson(json[r'priority']),
        badge: mapValueOfType<int>(json, r'badge'),
        imageUrl: mapValueOfType<String>(json, r'imageUrl'),
        scheduledAt: mapValueOfType<String>(json, r'scheduledAt'),
        callbackUrl: mapValueOfType<String>(json, r'callbackUrl'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<SendRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendRequest> mapFromJson(dynamic json) {
    final map = <String, SendRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendRequest-objects as value to a dart map
  static Map<String, List<SendRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channels',
    'to',
  };
}

/// Marketing only reaches contacts who consented to it and is held during quiet hours. Transactional is neither.  A marketing email also carries an unsubscribe link, added for you: a line at the end of the body, and the `List-Unsubscribe` and `List-Unsubscribe-Post` headers a mail client reads to show its own unsubscribe button. Following it suppresses that address and marks the contact unsubscribed, so later sends skip them. Nothing is added to a transactional message, and nothing is added to SMS, which is charged by segment and would cost more than was quoted. 
class SendRequestPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendRequestPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const marketing = SendRequestPurposeEnum._(r'marketing');
  static const transactional = SendRequestPurposeEnum._(r'transactional');

  /// List of all possible values in this [enum][SendRequestPurposeEnum].
  static const values = <SendRequestPurposeEnum>[
    marketing,
    transactional,
  ];

  static SendRequestPurposeEnum? fromJson(dynamic value) => SendRequestPurposeEnumTypeTransformer().decode(value);

  static List<SendRequestPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendRequestPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendRequestPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendRequestPurposeEnum] to String,
/// and [decode] dynamic data back to [SendRequestPurposeEnum].
class SendRequestPurposeEnumTypeTransformer {
  factory SendRequestPurposeEnumTypeTransformer() => _instance ??= const SendRequestPurposeEnumTypeTransformer._();

  const SendRequestPurposeEnumTypeTransformer._();

  String encode(SendRequestPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendRequestPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendRequestPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'marketing': return SendRequestPurposeEnum.marketing;
        case r'transactional': return SendRequestPurposeEnum.transactional;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendRequestPurposeEnumTypeTransformer] instance.
  static SendRequestPurposeEnumTypeTransformer? _instance;
}



class SendRequestRoutingEnum {
  /// Instantiate a new enum with the provided [value].
  const SendRequestRoutingEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const parallel = SendRequestRoutingEnum._(r'parallel');
  static const fallback = SendRequestRoutingEnum._(r'fallback');

  /// List of all possible values in this [enum][SendRequestRoutingEnum].
  static const values = <SendRequestRoutingEnum>[
    parallel,
    fallback,
  ];

  static SendRequestRoutingEnum? fromJson(dynamic value) => SendRequestRoutingEnumTypeTransformer().decode(value);

  static List<SendRequestRoutingEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendRequestRoutingEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendRequestRoutingEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendRequestRoutingEnum] to String,
/// and [decode] dynamic data back to [SendRequestRoutingEnum].
class SendRequestRoutingEnumTypeTransformer {
  factory SendRequestRoutingEnumTypeTransformer() => _instance ??= const SendRequestRoutingEnumTypeTransformer._();

  const SendRequestRoutingEnumTypeTransformer._();

  String encode(SendRequestRoutingEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendRequestRoutingEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendRequestRoutingEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'parallel': return SendRequestRoutingEnum.parallel;
        case r'fallback': return SendRequestRoutingEnum.fallback;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendRequestRoutingEnumTypeTransformer] instance.
  static SendRequestRoutingEnumTypeTransformer? _instance;
}


/// With `fallback` routing, what counts as not working out. A refusal falls back whichever is chosen; `timeout` also falls back when nothing was delivered within the wait, and `unacknowledged` when nothing was read, which needs your own read callback wired up. 
class SendRequestFallbackOnEnum {
  /// Instantiate a new enum with the provided [value].
  const SendRequestFallbackOnEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const failure = SendRequestFallbackOnEnum._(r'failure');
  static const timeout = SendRequestFallbackOnEnum._(r'timeout');
  static const unacknowledged = SendRequestFallbackOnEnum._(r'unacknowledged');

  /// List of all possible values in this [enum][SendRequestFallbackOnEnum].
  static const values = <SendRequestFallbackOnEnum>[
    failure,
    timeout,
    unacknowledged,
  ];

  static SendRequestFallbackOnEnum? fromJson(dynamic value) => SendRequestFallbackOnEnumTypeTransformer().decode(value);

  static List<SendRequestFallbackOnEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendRequestFallbackOnEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendRequestFallbackOnEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendRequestFallbackOnEnum] to String,
/// and [decode] dynamic data back to [SendRequestFallbackOnEnum].
class SendRequestFallbackOnEnumTypeTransformer {
  factory SendRequestFallbackOnEnumTypeTransformer() => _instance ??= const SendRequestFallbackOnEnumTypeTransformer._();

  const SendRequestFallbackOnEnumTypeTransformer._();

  String encode(SendRequestFallbackOnEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendRequestFallbackOnEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendRequestFallbackOnEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'failure': return SendRequestFallbackOnEnum.failure;
        case r'timeout': return SendRequestFallbackOnEnum.timeout;
        case r'unacknowledged': return SendRequestFallbackOnEnum.unacknowledged;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendRequestFallbackOnEnumTypeTransformer] instance.
  static SendRequestFallbackOnEnumTypeTransformer? _instance;
}


/// Push only.
class SendRequestPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const SendRequestPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const high = SendRequestPriorityEnum._(r'high');
  static const normal = SendRequestPriorityEnum._(r'normal');

  /// List of all possible values in this [enum][SendRequestPriorityEnum].
  static const values = <SendRequestPriorityEnum>[
    high,
    normal,
  ];

  static SendRequestPriorityEnum? fromJson(dynamic value) => SendRequestPriorityEnumTypeTransformer().decode(value);

  static List<SendRequestPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendRequestPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendRequestPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendRequestPriorityEnum] to String,
/// and [decode] dynamic data back to [SendRequestPriorityEnum].
class SendRequestPriorityEnumTypeTransformer {
  factory SendRequestPriorityEnumTypeTransformer() => _instance ??= const SendRequestPriorityEnumTypeTransformer._();

  const SendRequestPriorityEnumTypeTransformer._();

  String encode(SendRequestPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendRequestPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendRequestPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'high': return SendRequestPriorityEnum.high;
        case r'normal': return SendRequestPriorityEnum.normal;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendRequestPriorityEnumTypeTransformer] instance.
  static SendRequestPriorityEnumTypeTransformer? _instance;
}


