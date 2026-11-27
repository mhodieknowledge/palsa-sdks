//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class ListPushApps200ResponseData {
  /// Returns a new [ListPushApps200ResponseData] instance.
  ListPushApps200ResponseData({
    this.apps = const [],
  });

  List<PushApp> apps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListPushApps200ResponseData &&
    _deepEquality.equals(other.apps, apps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apps.hashCode);

  @override
  String toString() => 'ListPushApps200ResponseData[apps=$apps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apps'] = this.apps;
    return json;
  }

  /// Returns a new [ListPushApps200ResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListPushApps200ResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListPushApps200ResponseData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListPushApps200ResponseData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListPushApps200ResponseData(
        apps: PushApp.listFromJson(json[r'apps']),
      );
    }
    return null;
  }

  static List<ListPushApps200ResponseData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListPushApps200ResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListPushApps200ResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListPushApps200ResponseData> mapFromJson(dynamic json) {
    final map = <String, ListPushApps200ResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListPushApps200ResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListPushApps200ResponseData-objects as value to a dart map
  static Map<String, List<ListPushApps200ResponseData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListPushApps200ResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListPushApps200ResponseData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'apps',
  };
}

