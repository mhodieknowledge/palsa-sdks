//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Blocker {
  /// Returns a new [Blocker] instance.
  Blocker({
    required this.code,
    required this.message,
    required this.skippable,
    this.count,
  });

  String code;

  String message;

  /// False stops the send outright. True means it proceeds with those recipients left out.
  bool skippable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Blocker &&
    other.code == code &&
    other.message == message &&
    other.skippable == skippable &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message.hashCode) +
    (skippable.hashCode) +
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'Blocker[code=$code, message=$message, skippable=$skippable, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'message'] = this.message;
      json[r'skippable'] = this.skippable;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [Blocker] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blocker? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Blocker[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Blocker[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blocker(
        code: mapValueOfType<String>(json, r'code')!,
        message: mapValueOfType<String>(json, r'message')!,
        skippable: mapValueOfType<bool>(json, r'skippable')!,
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<Blocker> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Blocker>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blocker.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blocker> mapFromJson(dynamic json) {
    final map = <String, Blocker>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blocker.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blocker-objects as value to a dart map
  static Map<String, List<Blocker>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Blocker>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Blocker.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'message',
    'skippable',
  };
}

