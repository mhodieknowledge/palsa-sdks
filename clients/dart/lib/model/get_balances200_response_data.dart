//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class GetBalances200ResponseData {
  /// Returns a new [GetBalances200ResponseData] instance.
  GetBalances200ResponseData({
    this.balances = const [],
  });

  List<Balance> balances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetBalances200ResponseData &&
    _deepEquality.equals(other.balances, balances);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balances.hashCode);

  @override
  String toString() => 'GetBalances200ResponseData[balances=$balances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balances'] = this.balances;
    return json;
  }

  /// Returns a new [GetBalances200ResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetBalances200ResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetBalances200ResponseData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetBalances200ResponseData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetBalances200ResponseData(
        balances: Balance.listFromJson(json[r'balances']),
      );
    }
    return null;
  }

  static List<GetBalances200ResponseData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetBalances200ResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetBalances200ResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetBalances200ResponseData> mapFromJson(dynamic json) {
    final map = <String, GetBalances200ResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetBalances200ResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetBalances200ResponseData-objects as value to a dart map
  static Map<String, List<GetBalances200ResponseData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetBalances200ResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetBalances200ResponseData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'balances',
  };
}

