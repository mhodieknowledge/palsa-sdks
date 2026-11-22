//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class QuoteVariants {
  /// Returns a new [QuoteVariants] instance.
  QuoteVariants({
    required this.A,
    required this.B,
  });

  int A;

  int B;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuoteVariants &&
    other.A == A &&
    other.B == B;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (A.hashCode) +
    (B.hashCode);

  @override
  String toString() => 'QuoteVariants[A=$A, B=$B]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'A'] = this.A;
      json[r'B'] = this.B;
    return json;
  }

  /// Returns a new [QuoteVariants] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuoteVariants? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QuoteVariants[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QuoteVariants[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QuoteVariants(
        A: mapValueOfType<int>(json, r'A')!,
        B: mapValueOfType<int>(json, r'B')!,
      );
    }
    return null;
  }

  static List<QuoteVariants> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuoteVariants>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteVariants.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuoteVariants> mapFromJson(dynamic json) {
    final map = <String, QuoteVariants>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuoteVariants.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuoteVariants-objects as value to a dart map
  static Map<String, List<QuoteVariants>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuoteVariants>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuoteVariants.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'A',
    'B',
  };
}

