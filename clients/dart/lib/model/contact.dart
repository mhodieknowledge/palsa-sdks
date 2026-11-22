//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Contact {
  /// Returns a new [Contact] instance.
  Contact({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    required this.state,
    this.tags,
    required this.createdAt,
  });

  String id;

  String name;

  String? email;

  String? phone;

  ContactStateEnum state;

  /// JSON array
  String? tags;

  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Contact &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.phone == phone &&
    other.state == state &&
    other.tags == tags &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (state.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Contact[id=$id, name=$name, email=$email, phone=$phone, state=$state, tags=$tags, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
      json[r'state'] = this.state;
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [Contact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Contact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Contact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Contact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Contact(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        state: ContactStateEnum.fromJson(json[r'state'])!,
        tags: mapValueOfType<String>(json, r'tags'),
        createdAt: mapValueOfType<String>(json, r'created_at')!,
      );
    }
    return null;
  }

  static List<Contact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Contact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Contact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Contact> mapFromJson(dynamic json) {
    final map = <String, Contact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Contact-objects as value to a dart map
  static Map<String, List<Contact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Contact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Contact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'state',
    'created_at',
  };
}


class ContactStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ContactStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const consented = ContactStateEnum._(r'consented');
  static const pending = ContactStateEnum._(r'pending');
  static const unsubscribed = ContactStateEnum._(r'unsubscribed');
  static const bounced = ContactStateEnum._(r'bounced');

  /// List of all possible values in this [enum][ContactStateEnum].
  static const values = <ContactStateEnum>[
    consented,
    pending,
    unsubscribed,
    bounced,
  ];

  static ContactStateEnum? fromJson(dynamic value) => ContactStateEnumTypeTransformer().decode(value);

  static List<ContactStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContactStateEnum] to String,
/// and [decode] dynamic data back to [ContactStateEnum].
class ContactStateEnumTypeTransformer {
  factory ContactStateEnumTypeTransformer() => _instance ??= const ContactStateEnumTypeTransformer._();

  const ContactStateEnumTypeTransformer._();

  String encode(ContactStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContactStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContactStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'consented': return ContactStateEnum.consented;
        case r'pending': return ContactStateEnum.pending;
        case r'unsubscribed': return ContactStateEnum.unsubscribed;
        case r'bounced': return ContactStateEnum.bounced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContactStateEnumTypeTransformer] instance.
  static ContactStateEnumTypeTransformer? _instance;
}


