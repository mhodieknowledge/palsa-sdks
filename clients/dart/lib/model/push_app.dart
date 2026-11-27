//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class PushApp {
  /// Returns a new [PushApp] instance.
  PushApp({
    required this.id,
    required this.name,
    required this.projectId,
    required this.authMode,
    this.clientEmail,
    this.grantTo,
    this.role,
    this.androidPackage,
    this.iosBundleId,
    this.webOrigin,
    required this.status,
    this.message,
    required this.isDefault,
    this.verifiedAt,
    this.checkedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  String projectId;

  PushAppAuthModeEnum authMode;

  /// The uploaded key's service account. The key itself is never returned.
  String? clientEmail;

  /// Delegated only. The account to grant the role to.
  String? grantTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  String? androidPackage;

  String? iosBundleId;

  String? webOrigin;

  /// Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved.
  PushAppStatusEnum status;

  String? message;

  bool isDefault;

  String? verifiedAt;

  String? checkedAt;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushApp &&
    other.id == id &&
    other.name == name &&
    other.projectId == projectId &&
    other.authMode == authMode &&
    other.clientEmail == clientEmail &&
    other.grantTo == grantTo &&
    other.role == role &&
    other.androidPackage == androidPackage &&
    other.iosBundleId == iosBundleId &&
    other.webOrigin == webOrigin &&
    other.status == status &&
    other.message == message &&
    other.isDefault == isDefault &&
    other.verifiedAt == verifiedAt &&
    other.checkedAt == checkedAt &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (projectId.hashCode) +
    (authMode.hashCode) +
    (clientEmail == null ? 0 : clientEmail!.hashCode) +
    (grantTo == null ? 0 : grantTo!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (androidPackage == null ? 0 : androidPackage!.hashCode) +
    (iosBundleId == null ? 0 : iosBundleId!.hashCode) +
    (webOrigin == null ? 0 : webOrigin!.hashCode) +
    (status.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (isDefault.hashCode) +
    (verifiedAt == null ? 0 : verifiedAt!.hashCode) +
    (checkedAt == null ? 0 : checkedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PushApp[id=$id, name=$name, projectId=$projectId, authMode=$authMode, clientEmail=$clientEmail, grantTo=$grantTo, role=$role, androidPackage=$androidPackage, iosBundleId=$iosBundleId, webOrigin=$webOrigin, status=$status, message=$message, isDefault=$isDefault, verifiedAt=$verifiedAt, checkedAt=$checkedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'projectId'] = this.projectId;
      json[r'authMode'] = this.authMode;
    if (this.clientEmail != null) {
      json[r'clientEmail'] = this.clientEmail;
    } else {
      json[r'clientEmail'] = null;
    }
    if (this.grantTo != null) {
      json[r'grantTo'] = this.grantTo;
    } else {
      json[r'grantTo'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.androidPackage != null) {
      json[r'androidPackage'] = this.androidPackage;
    } else {
      json[r'androidPackage'] = null;
    }
    if (this.iosBundleId != null) {
      json[r'iosBundleId'] = this.iosBundleId;
    } else {
      json[r'iosBundleId'] = null;
    }
    if (this.webOrigin != null) {
      json[r'webOrigin'] = this.webOrigin;
    } else {
      json[r'webOrigin'] = null;
    }
      json[r'status'] = this.status;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'isDefault'] = this.isDefault;
    if (this.verifiedAt != null) {
      json[r'verifiedAt'] = this.verifiedAt;
    } else {
      json[r'verifiedAt'] = null;
    }
    if (this.checkedAt != null) {
      json[r'checkedAt'] = this.checkedAt;
    } else {
      json[r'checkedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt;
      json[r'updatedAt'] = this.updatedAt;
    return json;
  }

  /// Returns a new [PushApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushApp(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        projectId: mapValueOfType<String>(json, r'projectId')!,
        authMode: PushAppAuthModeEnum.fromJson(json[r'authMode'])!,
        clientEmail: mapValueOfType<String>(json, r'clientEmail'),
        grantTo: mapValueOfType<String>(json, r'grantTo'),
        role: mapValueOfType<String>(json, r'role'),
        androidPackage: mapValueOfType<String>(json, r'androidPackage'),
        iosBundleId: mapValueOfType<String>(json, r'iosBundleId'),
        webOrigin: mapValueOfType<String>(json, r'webOrigin'),
        status: PushAppStatusEnum.fromJson(json[r'status'])!,
        message: mapValueOfType<String>(json, r'message'),
        isDefault: mapValueOfType<bool>(json, r'isDefault')!,
        verifiedAt: mapValueOfType<String>(json, r'verifiedAt'),
        checkedAt: mapValueOfType<String>(json, r'checkedAt'),
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
      );
    }
    return null;
  }

  static List<PushApp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushApp> mapFromJson(dynamic json) {
    final map = <String, PushApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushApp-objects as value to a dart map
  static Map<String, List<PushApp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushApp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushApp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'projectId',
    'authMode',
    'status',
    'isDefault',
    'createdAt',
    'updatedAt',
  };
}


class PushAppAuthModeEnum {
  /// Instantiate a new enum with the provided [value].
  const PushAppAuthModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const serviceAccount = PushAppAuthModeEnum._(r'service_account');
  static const delegated = PushAppAuthModeEnum._(r'delegated');

  /// List of all possible values in this [enum][PushAppAuthModeEnum].
  static const values = <PushAppAuthModeEnum>[
    serviceAccount,
    delegated,
  ];

  static PushAppAuthModeEnum? fromJson(dynamic value) => PushAppAuthModeEnumTypeTransformer().decode(value);

  static List<PushAppAuthModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushAppAuthModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushAppAuthModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PushAppAuthModeEnum] to String,
/// and [decode] dynamic data back to [PushAppAuthModeEnum].
class PushAppAuthModeEnumTypeTransformer {
  factory PushAppAuthModeEnumTypeTransformer() => _instance ??= const PushAppAuthModeEnumTypeTransformer._();

  const PushAppAuthModeEnumTypeTransformer._();

  String encode(PushAppAuthModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PushAppAuthModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PushAppAuthModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'service_account': return PushAppAuthModeEnum.serviceAccount;
        case r'delegated': return PushAppAuthModeEnum.delegated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PushAppAuthModeEnumTypeTransformer] instance.
  static PushAppAuthModeEnumTypeTransformer? _instance;
}


/// Only a verified app sends. awaiting_device means delegated access works and ownership is still to be proved.
class PushAppStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PushAppStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = PushAppStatusEnum._(r'pending');
  static const awaitingDevice = PushAppStatusEnum._(r'awaiting_device');
  static const verified = PushAppStatusEnum._(r'verified');
  static const failed = PushAppStatusEnum._(r'failed');

  /// List of all possible values in this [enum][PushAppStatusEnum].
  static const values = <PushAppStatusEnum>[
    pending,
    awaitingDevice,
    verified,
    failed,
  ];

  static PushAppStatusEnum? fromJson(dynamic value) => PushAppStatusEnumTypeTransformer().decode(value);

  static List<PushAppStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushAppStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushAppStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PushAppStatusEnum] to String,
/// and [decode] dynamic data back to [PushAppStatusEnum].
class PushAppStatusEnumTypeTransformer {
  factory PushAppStatusEnumTypeTransformer() => _instance ??= const PushAppStatusEnumTypeTransformer._();

  const PushAppStatusEnumTypeTransformer._();

  String encode(PushAppStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PushAppStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PushAppStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return PushAppStatusEnum.pending;
        case r'awaiting_device': return PushAppStatusEnum.awaitingDevice;
        case r'verified': return PushAppStatusEnum.verified;
        case r'failed': return PushAppStatusEnum.failed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PushAppStatusEnumTypeTransformer] instance.
  static PushAppStatusEnumTypeTransformer? _instance;
}


