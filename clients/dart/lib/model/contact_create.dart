//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class ContactCreate {
  /// Returns a new [ContactCreate] instance.
  ContactCreate({
    this.name = '',
    this.email,
    this.phone,
    this.state = const ContactCreateStateEnum._('pending'),
    this.consentSource,
    this.tags = const [],
    this.fields = const {},
  });

  String name;

  String? email;

  String? phone;

  /// Only `consented` contacts receive marketing. Say `consented` only if you can show they did.
  ContactCreateStateEnum state;

  /// Where consent came from. Worth recording.
  String? consentSource;

  List<String> tags;

  /// Your own fields, usable as `{{ variables }}` in a body.
  Map<String, String> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactCreate &&
    other.name == name &&
    other.email == email &&
    other.phone == phone &&
    other.state == state &&
    other.consentSource == consentSource &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (state.hashCode) +
    (consentSource == null ? 0 : consentSource!.hashCode) +
    (tags.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'ContactCreate[name=$name, email=$email, phone=$phone, state=$state, consentSource=$consentSource, tags=$tags, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.consentSource != null) {
      json[r'consentSource'] = this.consentSource;
    } else {
      json[r'consentSource'] = null;
    }
      json[r'tags'] = this.tags;
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [ContactCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactCreate(
        name: mapValueOfType<String>(json, r'name') ?? '',
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        state: ContactCreateStateEnum.fromJson(json[r'state']) ?? ContactCreateStateEnum.pending,
        consentSource: mapValueOfType<String>(json, r'consentSource'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        fields: mapCastOfType<String, String>(json, r'fields') ?? const {},
      );
    }
    return null;
  }

  static List<ContactCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactCreate> mapFromJson(dynamic json) {
    final map = <String, ContactCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactCreate-objects as value to a dart map
  static Map<String, List<ContactCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Only `consented` contacts receive marketing. Say `consented` only if you can show they did.
class ContactCreateStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ContactCreateStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const consented = ContactCreateStateEnum._(r'consented');
  static const pending = ContactCreateStateEnum._(r'pending');

  /// List of all possible values in this [enum][ContactCreateStateEnum].
  static const values = <ContactCreateStateEnum>[
    consented,
    pending,
  ];

  static ContactCreateStateEnum? fromJson(dynamic value) => ContactCreateStateEnumTypeTransformer().decode(value);

  static List<ContactCreateStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactCreateStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactCreateStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ContactCreateStateEnum] to String,
/// and [decode] dynamic data back to [ContactCreateStateEnum].
class ContactCreateStateEnumTypeTransformer {
  factory ContactCreateStateEnumTypeTransformer() => _instance ??= const ContactCreateStateEnumTypeTransformer._();

  const ContactCreateStateEnumTypeTransformer._();

  String encode(ContactCreateStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ContactCreateStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ContactCreateStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'consented': return ContactCreateStateEnum.consented;
        case r'pending': return ContactCreateStateEnum.pending;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ContactCreateStateEnumTypeTransformer] instance.
  static ContactCreateStateEnumTypeTransformer? _instance;
}


