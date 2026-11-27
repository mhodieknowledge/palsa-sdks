//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class PushAppCreate {
  /// Returns a new [PushAppCreate] instance.
  PushAppCreate({
    required this.name,
    required this.authMode,
    this.projectId,
    this.serviceAccount,
    this.androidPackage,
    this.iosBundleId,
    this.webOrigin,
  });

  String name;

  PushAppCreateAuthModeEnum authMode;

  /// Required for delegated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// The whole service-account JSON file as a string. Required for service_account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceAccount;

  String? androidPackage;

  String? iosBundleId;

  String? webOrigin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushAppCreate &&
    other.name == name &&
    other.authMode == authMode &&
    other.projectId == projectId &&
    other.serviceAccount == serviceAccount &&
    other.androidPackage == androidPackage &&
    other.iosBundleId == iosBundleId &&
    other.webOrigin == webOrigin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (authMode.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (serviceAccount == null ? 0 : serviceAccount!.hashCode) +
    (androidPackage == null ? 0 : androidPackage!.hashCode) +
    (iosBundleId == null ? 0 : iosBundleId!.hashCode) +
    (webOrigin == null ? 0 : webOrigin!.hashCode);

  @override
  String toString() => 'PushAppCreate[name=$name, authMode=$authMode, projectId=$projectId, serviceAccount=$serviceAccount, androidPackage=$androidPackage, iosBundleId=$iosBundleId, webOrigin=$webOrigin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'authMode'] = this.authMode;
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.serviceAccount != null) {
      json[r'serviceAccount'] = this.serviceAccount;
    } else {
      json[r'serviceAccount'] = null;
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
    return json;
  }

  /// Returns a new [PushAppCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushAppCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushAppCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushAppCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushAppCreate(
        name: mapValueOfType<String>(json, r'name')!,
        authMode: PushAppCreateAuthModeEnum.fromJson(json[r'authMode'])!,
        projectId: mapValueOfType<String>(json, r'projectId'),
        serviceAccount: mapValueOfType<String>(json, r'serviceAccount'),
        androidPackage: mapValueOfType<String>(json, r'androidPackage'),
        iosBundleId: mapValueOfType<String>(json, r'iosBundleId'),
        webOrigin: mapValueOfType<String>(json, r'webOrigin'),
      );
    }
    return null;
  }

  static List<PushAppCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushAppCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushAppCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushAppCreate> mapFromJson(dynamic json) {
    final map = <String, PushAppCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushAppCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushAppCreate-objects as value to a dart map
  static Map<String, List<PushAppCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushAppCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushAppCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'authMode',
  };
}


class PushAppCreateAuthModeEnum {
  /// Instantiate a new enum with the provided [value].
  const PushAppCreateAuthModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const serviceAccount = PushAppCreateAuthModeEnum._(r'service_account');
  static const delegated = PushAppCreateAuthModeEnum._(r'delegated');

  /// List of all possible values in this [enum][PushAppCreateAuthModeEnum].
  static const values = <PushAppCreateAuthModeEnum>[
    serviceAccount,
    delegated,
  ];

  static PushAppCreateAuthModeEnum? fromJson(dynamic value) => PushAppCreateAuthModeEnumTypeTransformer().decode(value);

  static List<PushAppCreateAuthModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushAppCreateAuthModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushAppCreateAuthModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PushAppCreateAuthModeEnum] to String,
/// and [decode] dynamic data back to [PushAppCreateAuthModeEnum].
class PushAppCreateAuthModeEnumTypeTransformer {
  factory PushAppCreateAuthModeEnumTypeTransformer() => _instance ??= const PushAppCreateAuthModeEnumTypeTransformer._();

  const PushAppCreateAuthModeEnumTypeTransformer._();

  String encode(PushAppCreateAuthModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PushAppCreateAuthModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PushAppCreateAuthModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'service_account': return PushAppCreateAuthModeEnum.serviceAccount;
        case r'delegated': return PushAppCreateAuthModeEnum.delegated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PushAppCreateAuthModeEnumTypeTransformer] instance.
  static PushAppCreateAuthModeEnumTypeTransformer? _instance;
}


