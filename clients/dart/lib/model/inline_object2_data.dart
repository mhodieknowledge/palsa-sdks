//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class InlineObject2Data {
  /// Returns a new [InlineObject2Data] instance.
  InlineObject2Data({
    required this.topic,
    this.subscribed,
    this.unsubscribed,
    this.failed = const [],
  });

  String topic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subscribed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unsubscribed;

  List<InlineObject2DataFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject2Data &&
    other.topic == topic &&
    other.subscribed == subscribed &&
    other.unsubscribed == unsubscribed &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topic.hashCode) +
    (subscribed == null ? 0 : subscribed!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'InlineObject2Data[topic=$topic, subscribed=$subscribed, unsubscribed=$unsubscribed, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topic'] = this.topic;
    if (this.subscribed != null) {
      json[r'subscribed'] = this.subscribed;
    } else {
      json[r'subscribed'] = null;
    }
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [InlineObject2Data] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineObject2Data? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InlineObject2Data[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InlineObject2Data[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InlineObject2Data(
        topic: mapValueOfType<String>(json, r'topic')!,
        subscribed: mapValueOfType<int>(json, r'subscribed'),
        unsubscribed: mapValueOfType<int>(json, r'unsubscribed'),
        failed: InlineObject2DataFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<InlineObject2Data> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InlineObject2Data>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InlineObject2Data.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InlineObject2Data> mapFromJson(dynamic json) {
    final map = <String, InlineObject2Data>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InlineObject2Data.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InlineObject2Data-objects as value to a dart map
  static Map<String, List<InlineObject2Data>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InlineObject2Data>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InlineObject2Data.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topic',
    'failed',
  };
}

