//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class QuoteSms {
  /// Returns a new [QuoteSms] instance.
  QuoteSms({
    required this.encoding,
    required this.segments,
  });

  QuoteSmsEncodingEnum encoding;

  int segments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuoteSms &&
    other.encoding == encoding &&
    other.segments == segments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (encoding.hashCode) +
    (segments.hashCode);

  @override
  String toString() => 'QuoteSms[encoding=$encoding, segments=$segments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'encoding'] = this.encoding;
      json[r'segments'] = this.segments;
    return json;
  }

  /// Returns a new [QuoteSms] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuoteSms? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuoteSms[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuoteSms[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuoteSms(
        encoding: QuoteSmsEncodingEnum.fromJson(json[r'encoding'])!,
        segments: mapValueOfType<int>(json, r'segments')!,
      );
    }
    return null;
  }

  static List<QuoteSms> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuoteSms>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteSms.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuoteSms> mapFromJson(dynamic json) {
    final map = <String, QuoteSms>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuoteSms.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuoteSms-objects as value to a dart map
  static Map<String, List<QuoteSms>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuoteSms>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuoteSms.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'encoding',
    'segments',
  };
}


class QuoteSmsEncodingEnum {
  /// Instantiate a new enum with the provided [value].
  const QuoteSmsEncodingEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const gSM7 = QuoteSmsEncodingEnum._(r'GSM-7');
  static const unicode = QuoteSmsEncodingEnum._(r'Unicode');

  /// List of all possible values in this [enum][QuoteSmsEncodingEnum].
  static const values = <QuoteSmsEncodingEnum>[
    gSM7,
    unicode,
  ];

  static QuoteSmsEncodingEnum? fromJson(dynamic value) => QuoteSmsEncodingEnumTypeTransformer().decode(value);

  static List<QuoteSmsEncodingEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuoteSmsEncodingEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteSmsEncodingEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [QuoteSmsEncodingEnum] to String,
/// and [decode] dynamic data back to [QuoteSmsEncodingEnum].
class QuoteSmsEncodingEnumTypeTransformer {
  factory QuoteSmsEncodingEnumTypeTransformer() => _instance ??= const QuoteSmsEncodingEnumTypeTransformer._();

  const QuoteSmsEncodingEnumTypeTransformer._();

  String encode(QuoteSmsEncodingEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a QuoteSmsEncodingEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QuoteSmsEncodingEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GSM-7': return QuoteSmsEncodingEnum.gSM7;
        case r'Unicode': return QuoteSmsEncodingEnum.unicode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [QuoteSmsEncodingEnumTypeTransformer] instance.
  static QuoteSmsEncodingEnumTypeTransformer? _instance;
}


