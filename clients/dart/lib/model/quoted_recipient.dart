//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class QuotedRecipient {
  /// Returns a new [QuotedRecipient] instance.
  QuotedRecipient({
    required this.contactId,
    required this.address,
    required this.channel,
    required this.name,
    this.fields = const {},
    required this.units,
    required this.variant,
  });

  String? contactId;

  String address;

  Channel channel;

  String name;

  Map<String, Object> fields;

  /// What this one recipient costs
  int units;

  QuotedRecipientVariantEnum variant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuotedRecipient &&
    other.contactId == contactId &&
    other.address == address &&
    other.channel == channel &&
    other.name == name &&
    _deepEquality.equals(other.fields, fields) &&
    other.units == units &&
    other.variant == variant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contactId == null ? 0 : contactId!.hashCode) +
    (address.hashCode) +
    (channel.hashCode) +
    (name.hashCode) +
    (fields.hashCode) +
    (units.hashCode) +
    (variant.hashCode);

  @override
  String toString() => 'QuotedRecipient[contactId=$contactId, address=$address, channel=$channel, name=$name, fields=$fields, units=$units, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contactId != null) {
      json[r'contactId'] = this.contactId;
    } else {
      json[r'contactId'] = null;
    }
      json[r'address'] = this.address;
      json[r'channel'] = this.channel;
      json[r'name'] = this.name;
      json[r'fields'] = this.fields;
      json[r'units'] = this.units;
      json[r'variant'] = this.variant;
    return json;
  }

  /// Returns a new [QuotedRecipient] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuotedRecipient? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuotedRecipient[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuotedRecipient[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuotedRecipient(
        contactId: mapValueOfType<String>(json, r'contactId'),
        address: mapValueOfType<String>(json, r'address')!,
        channel: Channel.fromJson(json[r'channel'])!,
        name: mapValueOfType<String>(json, r'name')!,
        fields: mapCastOfType<String, Object>(json, r'fields')!,
        units: mapValueOfType<int>(json, r'units')!,
        variant: QuotedRecipientVariantEnum.fromJson(json[r'variant'])!,
      );
    }
    return null;
  }

  static List<QuotedRecipient> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuotedRecipient>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuotedRecipient.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuotedRecipient> mapFromJson(dynamic json) {
    final map = <String, QuotedRecipient>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuotedRecipient.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuotedRecipient-objects as value to a dart map
  static Map<String, List<QuotedRecipient>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuotedRecipient>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuotedRecipient.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contactId',
    'address',
    'channel',
    'name',
    'fields',
    'units',
    'variant',
  };
}


class QuotedRecipientVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const QuotedRecipientVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const A = QuotedRecipientVariantEnum._(r'A');
  static const B = QuotedRecipientVariantEnum._(r'B');

  /// List of all possible values in this [enum][QuotedRecipientVariantEnum].
  static const values = <QuotedRecipientVariantEnum>[
    A,
    B,
  ];

  static QuotedRecipientVariantEnum? fromJson(dynamic value) => QuotedRecipientVariantEnumTypeTransformer().decode(value);

  static List<QuotedRecipientVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuotedRecipientVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuotedRecipientVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [QuotedRecipientVariantEnum] to String,
/// and [decode] dynamic data back to [QuotedRecipientVariantEnum].
class QuotedRecipientVariantEnumTypeTransformer {
  factory QuotedRecipientVariantEnumTypeTransformer() => _instance ??= const QuotedRecipientVariantEnumTypeTransformer._();

  const QuotedRecipientVariantEnumTypeTransformer._();

  String encode(QuotedRecipientVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a QuotedRecipientVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QuotedRecipientVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'A': return QuotedRecipientVariantEnum.A;
        case r'B': return QuotedRecipientVariantEnum.B;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [QuotedRecipientVariantEnumTypeTransformer] instance.
  static QuotedRecipientVariantEnumTypeTransformer? _instance;
}


