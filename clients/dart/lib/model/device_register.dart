//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class DeviceRegister {
  /// Returns a new [DeviceRegister] instance.
  DeviceRegister({
    required this.token,
    required this.platform,
    this.contactId,
    this.appId,
    this.previousToken,
    this.appVersion,
    this.locale,
  });

  String token;

  DeviceRegisterPlatformEnum platform;

  String? contactId;

  /// The push app the token belongs to. Default the workspace's default app.
  String? appId;

  /// The token this one replaces, from the app's token-refresh callback. The device keeps its id, contact and topics.
  String? previousToken;

  String? appVersion;

  String? locale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceRegister &&
    other.token == token &&
    other.platform == platform &&
    other.contactId == contactId &&
    other.appId == appId &&
    other.previousToken == previousToken &&
    other.appVersion == appVersion &&
    other.locale == locale;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (platform.hashCode) +
    (contactId == null ? 0 : contactId!.hashCode) +
    (appId == null ? 0 : appId!.hashCode) +
    (previousToken == null ? 0 : previousToken!.hashCode) +
    (appVersion == null ? 0 : appVersion!.hashCode) +
    (locale == null ? 0 : locale!.hashCode);

  @override
  String toString() => 'DeviceRegister[token=$token, platform=$platform, contactId=$contactId, appId=$appId, previousToken=$previousToken, appVersion=$appVersion, locale=$locale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'platform'] = this.platform;
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
    if (this.previousToken != null) {
      json[r'previousToken'] = this.previousToken;
    } else {
      json[r'previousToken'] = null;
    }
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
    return json;
  }

  /// Returns a new [DeviceRegister] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceRegister? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceRegister[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceRegister[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceRegister(
        token: mapValueOfType<String>(json, r'token')!,
        platform: DeviceRegisterPlatformEnum.fromJson(json[r'platform'])!,
        contactId: mapValueOfType<String>(json, r'contactId'),
        appId: mapValueOfType<String>(json, r'appId'),
        previousToken: mapValueOfType<String>(json, r'previousToken'),
        appVersion: mapValueOfType<String>(json, r'appVersion'),
        locale: mapValueOfType<String>(json, r'locale'),
      );
    }
    return null;
  }

  static List<DeviceRegister> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceRegister>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceRegister.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceRegister> mapFromJson(dynamic json) {
    final map = <String, DeviceRegister>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceRegister.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceRegister-objects as value to a dart map
  static Map<String, List<DeviceRegister>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceRegister>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceRegister.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'platform',
  };
}


class DeviceRegisterPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const DeviceRegisterPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = DeviceRegisterPlatformEnum._(r'android');
  static const ios = DeviceRegisterPlatformEnum._(r'ios');
  static const web = DeviceRegisterPlatformEnum._(r'web');

  /// List of all possible values in this [enum][DeviceRegisterPlatformEnum].
  static const values = <DeviceRegisterPlatformEnum>[
    android,
    ios,
    web,
  ];

  static DeviceRegisterPlatformEnum? fromJson(dynamic value) => DeviceRegisterPlatformEnumTypeTransformer().decode(value);

  static List<DeviceRegisterPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceRegisterPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceRegisterPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeviceRegisterPlatformEnum] to String,
/// and [decode] dynamic data back to [DeviceRegisterPlatformEnum].
class DeviceRegisterPlatformEnumTypeTransformer {
  factory DeviceRegisterPlatformEnumTypeTransformer() => _instance ??= const DeviceRegisterPlatformEnumTypeTransformer._();

  const DeviceRegisterPlatformEnumTypeTransformer._();

  String encode(DeviceRegisterPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceRegisterPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceRegisterPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'android': return DeviceRegisterPlatformEnum.android;
        case r'ios': return DeviceRegisterPlatformEnum.ios;
        case r'web': return DeviceRegisterPlatformEnum.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeviceRegisterPlatformEnumTypeTransformer] instance.
  static DeviceRegisterPlatformEnumTypeTransformer? _instance;
}


