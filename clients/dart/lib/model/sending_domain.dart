//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class SendingDomain {
  /// Returns a new [SendingDomain] instance.
  SendingDomain({
    required this.id,
    required this.domain,
    required this.status,
    required this.message,
    this.dkimStatus,
    this.mailFromDomain,
    this.mailFromStatus,
    this.records = const [],
    this.lastCheckedAt,
    this.nextCheckAt,
    this.verifiedAt,
    required this.createdAt,
  });

  String id;

  String domain;

  SendingDomainStatusEnum status;

  /// What the state means
  String message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dkimStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailFromDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailFromStatus;

  List<SendingDomainRecordsInner> records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastCheckedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextCheckAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? verifiedAt;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomain &&
    other.id == id &&
    other.domain == domain &&
    other.status == status &&
    other.message == message &&
    other.dkimStatus == dkimStatus &&
    other.mailFromDomain == mailFromDomain &&
    other.mailFromStatus == mailFromStatus &&
    _deepEquality.equals(other.records, records) &&
    other.lastCheckedAt == lastCheckedAt &&
    other.nextCheckAt == nextCheckAt &&
    other.verifiedAt == verifiedAt &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domain.hashCode) +
    (status.hashCode) +
    (message.hashCode) +
    (dkimStatus == null ? 0 : dkimStatus!.hashCode) +
    (mailFromDomain == null ? 0 : mailFromDomain!.hashCode) +
    (mailFromStatus == null ? 0 : mailFromStatus!.hashCode) +
    (records.hashCode) +
    (lastCheckedAt == null ? 0 : lastCheckedAt!.hashCode) +
    (nextCheckAt == null ? 0 : nextCheckAt!.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'SendingDomain[id=$id, domain=$domain, status=$status, message=$message, dkimStatus=$dkimStatus, mailFromDomain=$mailFromDomain, mailFromStatus=$mailFromStatus, records=$records, lastCheckedAt=$lastCheckedAt, nextCheckAt=$nextCheckAt, verifiedAt=$verifiedAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'domain'] = this.domain;
      json[r'status'] = this.status;
      json[r'message'] = this.message;
    if (this.dkimStatus != null) {
      json[r'dkimStatus'] = this.dkimStatus;
    } else {
      json[r'dkimStatus'] = null;
    }
    if (this.mailFromDomain != null) {
      json[r'mailFromDomain'] = this.mailFromDomain;
    } else {
      json[r'mailFromDomain'] = null;
    }
    if (this.mailFromStatus != null) {
      json[r'mailFromStatus'] = this.mailFromStatus;
    } else {
      json[r'mailFromStatus'] = null;
    }
      json[r'records'] = this.records;
    if (this.lastCheckedAt != null) {
      json[r'lastCheckedAt'] = this.lastCheckedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastCheckedAt'] = null;
    }
    if (this.nextCheckAt != null) {
      json[r'nextCheckAt'] = this.nextCheckAt!.toUtc().toIso8601String();
    } else {
      json[r'nextCheckAt'] = null;
    }
    if (this.verifiedAt != null) {
      json[r'verifiedAt'] = this.verifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'verifiedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SendingDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomain(
        id: mapValueOfType<String>(json, r'id')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        status: SendingDomainStatusEnum.fromJson(json[r'status'])!,
        message: mapValueOfType<String>(json, r'message')!,
        dkimStatus: mapValueOfType<String>(json, r'dkimStatus'),
        mailFromDomain: mapValueOfType<String>(json, r'mailFromDomain'),
        mailFromStatus: mapValueOfType<String>(json, r'mailFromStatus'),
        records: SendingDomainRecordsInner.listFromJson(json[r'records']),
        lastCheckedAt: mapDateTime(json, r'lastCheckedAt', r''),
        nextCheckAt: mapDateTime(json, r'nextCheckAt', r''),
        verifiedAt: mapDateTime(json, r'verifiedAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
      );
    }
    return null;
  }

  static List<SendingDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomain> mapFromJson(dynamic json) {
    final map = <String, SendingDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomain-objects as value to a dart map
  static Map<String, List<SendingDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'domain',
    'status',
    'message',
    'records',
    'createdAt',
  };
}


class SendingDomainStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const awaitingProvider = SendingDomainStatusEnum._(r'awaiting_provider');
  static const pendingDns = SendingDomainStatusEnum._(r'pending_dns');
  static const verified = SendingDomainStatusEnum._(r'verified');
  static const failed = SendingDomainStatusEnum._(r'failed');
  static const suspended = SendingDomainStatusEnum._(r'suspended');

  /// List of all possible values in this [enum][SendingDomainStatusEnum].
  static const values = <SendingDomainStatusEnum>[
    awaitingProvider,
    pendingDns,
    verified,
    failed,
    suspended,
  ];

  static SendingDomainStatusEnum? fromJson(dynamic value) => SendingDomainStatusEnumTypeTransformer().decode(value);

  static List<SendingDomainStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainStatusEnum] to String,
/// and [decode] dynamic data back to [SendingDomainStatusEnum].
class SendingDomainStatusEnumTypeTransformer {
  factory SendingDomainStatusEnumTypeTransformer() => _instance ??= const SendingDomainStatusEnumTypeTransformer._();

  const SendingDomainStatusEnumTypeTransformer._();

  String encode(SendingDomainStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'awaiting_provider': return SendingDomainStatusEnum.awaitingProvider;
        case r'pending_dns': return SendingDomainStatusEnum.pendingDns;
        case r'verified': return SendingDomainStatusEnum.verified;
        case r'failed': return SendingDomainStatusEnum.failed;
        case r'suspended': return SendingDomainStatusEnum.suspended;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainStatusEnumTypeTransformer] instance.
  static SendingDomainStatusEnumTypeTransformer? _instance;
}


