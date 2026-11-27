//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class DeviceRegistered {
  /// Returns a new [DeviceRegistered] instance.
  DeviceRegistered({
    required this.registered,
    required this.deviceId,
    this.appId,
    required this.refreshed,
  });

  bool registered;

  String deviceId;

  String? appId;

  bool refreshed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceRegistered &&
    other.registered == registered &&
    other.deviceId == deviceId &&
    other.appId == appId &&
    other.refreshed == refreshed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registered.hashCode) +
    (deviceId.hashCode) +
    (appId == null ? 0 : appId!.hashCode) +
    (refreshed.hashCode);

  @override
  String toString() => 'DeviceRegistered[registered=$registered, deviceId=$deviceId, appId=$appId, refreshed=$refreshed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'registered'] = this.registered;
      json[r'deviceId'] = this.deviceId;
    if (this.appId != null) {
      json[r'appId'] = this.appId;
    } else {
      json[r'appId'] = null;
    }
      json[r'refreshed'] = this.refreshed;
    return json;
  }

  /// Returns a new [DeviceRegistered] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceRegistered? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceRegistered[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceRegistered[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceRegistered(
        registered: mapValueOfType<bool>(json, r'registered')!,
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        appId: mapValueOfType<String>(json, r'appId'),
        refreshed: mapValueOfType<bool>(json, r'refreshed')!,
      );
    }
    return null;
  }

  static List<DeviceRegistered> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceRegistered>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceRegistered.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceRegistered> mapFromJson(dynamic json) {
    final map = <String, DeviceRegistered>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceRegistered.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceRegistered-objects as value to a dart map
  static Map<String, List<DeviceRegistered>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceRegistered>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceRegistered.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'registered',
    'deviceId',
    'refreshed',
  };
}

