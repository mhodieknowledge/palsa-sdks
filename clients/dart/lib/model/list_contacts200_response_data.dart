//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class ListContacts200ResponseData {
  /// Returns a new [ListContacts200ResponseData] instance.
  ListContacts200ResponseData({
    this.contacts = const [],
  });

  List<Contact> contacts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListContacts200ResponseData &&
    _deepEquality.equals(other.contacts, contacts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contacts.hashCode);

  @override
  String toString() => 'ListContacts200ResponseData[contacts=$contacts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contacts'] = this.contacts;
    return json;
  }

  /// Returns a new [ListContacts200ResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListContacts200ResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListContacts200ResponseData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListContacts200ResponseData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListContacts200ResponseData(
        contacts: Contact.listFromJson(json[r'contacts']),
      );
    }
    return null;
  }

  static List<ListContacts200ResponseData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListContacts200ResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListContacts200ResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListContacts200ResponseData> mapFromJson(dynamic json) {
    final map = <String, ListContacts200ResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListContacts200ResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListContacts200ResponseData-objects as value to a dart map
  static Map<String, List<ListContacts200ResponseData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListContacts200ResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListContacts200ResponseData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contacts',
  };
}

