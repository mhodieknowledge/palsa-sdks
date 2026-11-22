//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class VerificationCheck {
  /// Returns a new [VerificationCheck] instance.
  VerificationCheck({
    required this.id,
    required this.state,
    this.attemptsLeft,
  });

  String id;

  VerificationCheckStateEnum state;

  /// Present while still pending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attemptsLeft;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerificationCheck &&
    other.id == id &&
    other.state == state &&
    other.attemptsLeft == attemptsLeft;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (state.hashCode) +
    (attemptsLeft == null ? 0 : attemptsLeft!.hashCode);

  @override
  String toString() => 'VerificationCheck[id=$id, state=$state, attemptsLeft=$attemptsLeft]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'state'] = this.state;
    if (this.attemptsLeft != null) {
      json[r'attemptsLeft'] = this.attemptsLeft;
    } else {
      json[r'attemptsLeft'] = null;
    }
    return json;
  }

  /// Returns a new [VerificationCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerificationCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerificationCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerificationCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerificationCheck(
        id: mapValueOfType<String>(json, r'id')!,
        state: VerificationCheckStateEnum.fromJson(json[r'state'])!,
        attemptsLeft: mapValueOfType<int>(json, r'attemptsLeft'),
      );
    }
    return null;
  }

  static List<VerificationCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerificationCheck> mapFromJson(dynamic json) {
    final map = <String, VerificationCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerificationCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerificationCheck-objects as value to a dart map
  static Map<String, List<VerificationCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerificationCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerificationCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'state',
  };
}


class VerificationCheckStateEnum {
  /// Instantiate a new enum with the provided [value].
  const VerificationCheckStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = VerificationCheckStateEnum._(r'pending');
  static const verified = VerificationCheckStateEnum._(r'verified');
  static const expired = VerificationCheckStateEnum._(r'expired');
  static const locked = VerificationCheckStateEnum._(r'locked');

  /// List of all possible values in this [enum][VerificationCheckStateEnum].
  static const values = <VerificationCheckStateEnum>[
    pending,
    verified,
    expired,
    locked,
  ];

  static VerificationCheckStateEnum? fromJson(dynamic value) => VerificationCheckStateEnumTypeTransformer().decode(value);

  static List<VerificationCheckStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationCheckStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationCheckStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationCheckStateEnum] to String,
/// and [decode] dynamic data back to [VerificationCheckStateEnum].
class VerificationCheckStateEnumTypeTransformer {
  factory VerificationCheckStateEnumTypeTransformer() => _instance ??= const VerificationCheckStateEnumTypeTransformer._();

  const VerificationCheckStateEnumTypeTransformer._();

  String encode(VerificationCheckStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationCheckStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationCheckStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return VerificationCheckStateEnum.pending;
        case r'verified': return VerificationCheckStateEnum.verified;
        case r'expired': return VerificationCheckStateEnum.expired;
        case r'locked': return VerificationCheckStateEnum.locked;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationCheckStateEnumTypeTransformer] instance.
  static VerificationCheckStateEnumTypeTransformer? _instance;
}


