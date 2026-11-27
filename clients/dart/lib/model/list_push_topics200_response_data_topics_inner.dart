//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class ListPushTopics200ResponseDataTopicsInner {
  /// Returns a new [ListPushTopics200ResponseDataTopicsInner] instance.
  ListPushTopics200ResponseDataTopicsInner({
    required this.topic,
    required this.devices,
  });

  String topic;

  int devices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListPushTopics200ResponseDataTopicsInner &&
    other.topic == topic &&
    other.devices == devices;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topic.hashCode) +
    (devices.hashCode);

  @override
  String toString() => 'ListPushTopics200ResponseDataTopicsInner[topic=$topic, devices=$devices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topic'] = this.topic;
      json[r'devices'] = this.devices;
    return json;
  }

  /// Returns a new [ListPushTopics200ResponseDataTopicsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListPushTopics200ResponseDataTopicsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListPushTopics200ResponseDataTopicsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListPushTopics200ResponseDataTopicsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListPushTopics200ResponseDataTopicsInner(
        topic: mapValueOfType<String>(json, r'topic')!,
        devices: mapValueOfType<int>(json, r'devices')!,
      );
    }
    return null;
  }

  static List<ListPushTopics200ResponseDataTopicsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListPushTopics200ResponseDataTopicsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListPushTopics200ResponseDataTopicsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListPushTopics200ResponseDataTopicsInner> mapFromJson(dynamic json) {
    final map = <String, ListPushTopics200ResponseDataTopicsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListPushTopics200ResponseDataTopicsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListPushTopics200ResponseDataTopicsInner-objects as value to a dart map
  static Map<String, List<ListPushTopics200ResponseDataTopicsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListPushTopics200ResponseDataTopicsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListPushTopics200ResponseDataTopicsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topic',
    'devices',
  };
}

