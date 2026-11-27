//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class DeviceTargets {
  /// Returns a new [DeviceTargets] instance.
  DeviceTargets({
    this.deviceIds = const [],
    this.tokens = const [],
    this.contactIds = const [],
  });

  List<String> deviceIds;

  List<String> tokens;

  List<String> contactIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceTargets &&
    _deepEquality.equals(other.deviceIds, deviceIds) &&
    _deepEquality.equals(other.tokens, tokens) &&
    _deepEquality.equals(other.contactIds, contactIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceIds.hashCode) +
    (tokens.hashCode) +
    (contactIds.hashCode);

  @override
  String toString() => 'DeviceTargets[deviceIds=$deviceIds, tokens=$tokens, contactIds=$contactIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceIds'] = this.deviceIds;
      json[r'tokens'] = this.tokens;
      json[r'contactIds'] = this.contactIds;
    return json;
  }

  /// Returns a new [DeviceTargets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceTargets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceTargets[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceTargets[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceTargets(
        deviceIds: json[r'deviceIds'] is Iterable
            ? (json[r'deviceIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokens: json[r'tokens'] is Iterable
            ? (json[r'tokens'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        contactIds: json[r'contactIds'] is Iterable
            ? (json[r'contactIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DeviceTargets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceTargets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceTargets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceTargets> mapFromJson(dynamic json) {
    final map = <String, DeviceTargets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceTargets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceTargets-objects as value to a dart map
  static Map<String, List<DeviceTargets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceTargets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceTargets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

