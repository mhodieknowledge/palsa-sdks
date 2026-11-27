//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Device {
  /// Returns a new [Device] instance.
  Device({
    required this.id,
    this.contactId,
    this.appId,
    required this.platform,
    required this.tokenEnd,
    this.appVersion,
    this.locale,
    this.lastSeenAt,
    this.tokenRefreshedAt,
    this.invalidatedAt,
    this.invalidReason,
    required this.createdAt,
  });

  String id;

  String? contactId;

  String? appId;

  DevicePlatformEnum platform;

  /// The last eight characters of the token. The token itself is never returned.
  String tokenEnd;

  String? appVersion;

  String? locale;

  String? lastSeenAt;

  String? tokenRefreshedAt;

  String? invalidatedAt;

  /// unregistered (Firebase no longer knows the token), sender_mismatch (the token belongs to another project), unregistered_by_app, or app_removed.
  String? invalidReason;

  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Device &&
    other.id == id &&
    other.contactId == contactId &&
    other.appId == appId &&
    other.platform == platform &&
    other.tokenEnd == tokenEnd &&
    other.appVersion == appVersion &&
    other.locale == locale &&
    other.lastSeenAt == lastSeenAt &&
    other.tokenRefreshedAt == tokenRefreshedAt &&
    other.invalidatedAt == invalidatedAt &&
    other.invalidReason == invalidReason &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (contactId == null ? 0 : contactId!.hashCode) +
    (appId == null ? 0 : appId!.hashCode) +
    (platform.hashCode) +
    (tokenEnd.hashCode) +
    (appVersion == null ? 0 : appVersion!.hashCode) +
    (locale == null ? 0 : locale!.hashCode) +
    (lastSeenAt == null ? 0 : lastSeenAt!.hashCode) +
    (tokenRefreshedAt == null ? 0 : tokenRefreshedAt!.hashCode) +
    (invalidatedAt == null ? 0 : invalidatedAt!.hashCode) +
    (invalidReason == null ? 0 : invalidReason!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Device[id=$id, contactId=$contactId, appId=$appId, platform=$platform, tokenEnd=$tokenEnd, appVersion=$appVersion, locale=$locale, lastSeenAt=$lastSeenAt, tokenRefreshedAt=$tokenRefreshedAt, invalidatedAt=$invalidatedAt, invalidReason=$invalidReason, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.contactId != null) {
      json[r'contactId'] = this.contactId;
    } else {
      json[r'contactId'] = null;
    }
    if (this.appId != null) {
      json[r'appId'] = this.appId;
    } else {
      json[r'appId'] = null;
    }
      json[r'platform'] = this.platform;
      json[r'tokenEnd'] = this.tokenEnd;
    if (this.appVersion != null) {
      json[r'appVersion'] = this.appVersion;
    } else {
      json[r'appVersion'] = null;
    }
    if (this.locale != null) {
      json[r'locale'] = this.locale;
    } else {
      json[r'locale'] = null;
    }
    if (this.lastSeenAt != null) {
      json[r'lastSeenAt'] = this.lastSeenAt;
    } else {
      json[r'lastSeenAt'] = null;
    }
    if (this.tokenRefreshedAt != null) {
      json[r'tokenRefreshedAt'] = this.tokenRefreshedAt;
    } else {
      json[r'tokenRefreshedAt'] = null;
    }
    if (this.invalidatedAt != null) {
      json[r'invalidatedAt'] = this.invalidatedAt;
    } else {
      json[r'invalidatedAt'] = null;
    }
    if (this.invalidReason != null) {
      json[r'invalidReason'] = this.invalidReason;
    } else {
      json[r'invalidReason'] = null;
    }
      json[r'createdAt'] = this.createdAt;
    return json;
  }

  /// Returns a new [Device] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Device? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Device[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Device[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Device(
        id: mapValueOfType<String>(json, r'id')!,
        contactId: mapValueOfType<String>(json, r'contactId'),
        appId: mapValueOfType<String>(json, r'appId'),
        platform: DevicePlatformEnum.fromJson(json[r'platform'])!,
        tokenEnd: mapValueOfType<String>(json, r'tokenEnd')!,
        appVersion: mapValueOfType<String>(json, r'appVersion'),
        locale: mapValueOfType<String>(json, r'locale'),
        lastSeenAt: mapValueOfType<String>(json, r'lastSeenAt'),
        tokenRefreshedAt: mapValueOfType<String>(json, r'tokenRefreshedAt'),
        invalidatedAt: mapValueOfType<String>(json, r'invalidatedAt'),
        invalidReason: mapValueOfType<String>(json, r'invalidReason'),
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
      );
    }
    return null;
  }

  static List<Device> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Device>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Device.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Device> mapFromJson(dynamic json) {
    final map = <String, Device>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Device.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Device>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Device.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'platform',
    'tokenEnd',
    'createdAt',
  };
}


class DevicePlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = DevicePlatformEnum._(r'android');
  static const ios = DevicePlatformEnum._(r'ios');
  static const web = DevicePlatformEnum._(r'web');

  /// List of all possible values in this [enum][DevicePlatformEnum].
  static const values = <DevicePlatformEnum>[
    android,
    ios,
    web,
  ];

  static DevicePlatformEnum? fromJson(dynamic value) => DevicePlatformEnumTypeTransformer().decode(value);

  static List<DevicePlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePlatformEnum] to String,
/// and [decode] dynamic data back to [DevicePlatformEnum].
class DevicePlatformEnumTypeTransformer {
  factory DevicePlatformEnumTypeTransformer() => _instance ??= const DevicePlatformEnumTypeTransformer._();

  const DevicePlatformEnumTypeTransformer._();

  String encode(DevicePlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'android': return DevicePlatformEnum.android;
        case r'ios': return DevicePlatformEnum.ios;
        case r'web': return DevicePlatformEnum.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePlatformEnumTypeTransformer] instance.
  static DevicePlatformEnumTypeTransformer? _instance;
}


