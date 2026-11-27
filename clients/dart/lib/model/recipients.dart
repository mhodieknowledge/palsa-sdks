//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Recipients {
  /// Returns a new [Recipients] instance.
  Recipients({
    this.contactIds = const [],
    this.addresses = const [],
    this.audienceId,
    this.topic,
  });

  List<String> contactIds;

  /// Phone numbers or email addresses, for people who are not saved contacts.
  List<String> addresses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audienceId;

  /// Push only, and on push alone. Every device subscribed to this topic, as one delivery.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recipients &&
    _deepEquality.equals(other.contactIds, contactIds) &&
    _deepEquality.equals(other.addresses, addresses) &&
    other.audienceId == audienceId &&
    other.topic == topic;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contactIds.hashCode) +
    (addresses.hashCode) +
    (audienceId == null ? 0 : audienceId!.hashCode) +
    (topic == null ? 0 : topic!.hashCode);

  @override
  String toString() => 'Recipients[contactIds=$contactIds, addresses=$addresses, audienceId=$audienceId, topic=$topic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contactIds'] = this.contactIds;
      json[r'addresses'] = this.addresses;
    if (this.audienceId != null) {
      json[r'audienceId'] = this.audienceId;
    } else {
      json[r'audienceId'] = null;
    }
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
    return json;
  }

  /// Returns a new [Recipients] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recipients? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recipients[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recipients[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recipients(
        contactIds: json[r'contactIds'] is Iterable
            ? (json[r'contactIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        addresses: json[r'addresses'] is Iterable
            ? (json[r'addresses'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        audienceId: mapValueOfType<String>(json, r'audienceId'),
        topic: mapValueOfType<String>(json, r'topic'),
      );
    }
    return null;
  }

  static List<Recipients> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recipients>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recipients.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recipients> mapFromJson(dynamic json) {
    final map = <String, Recipients>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recipients.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recipients-objects as value to a dart map
  static Map<String, List<Recipients>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recipients>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recipients.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

