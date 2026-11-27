//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class IosPushOptions {
  /// Returns a new [IosPushOptions] instance.
  IosPushOptions({
    this.threadId,
    this.category,
    this.interruptionLevel,
  });

  /// Groups notifications together.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  /// The notification category
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  IosPushOptionsInterruptionLevelEnum? interruptionLevel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IosPushOptions &&
    other.threadId == threadId &&
    other.category == category &&
    other.interruptionLevel == interruptionLevel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (threadId == null ? 0 : threadId!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (interruptionLevel == null ? 0 : interruptionLevel!.hashCode);

  @override
  String toString() => 'IosPushOptions[threadId=$threadId, category=$category, interruptionLevel=$interruptionLevel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.interruptionLevel != null) {
      json[r'interruptionLevel'] = this.interruptionLevel;
    } else {
      json[r'interruptionLevel'] = null;
    }
    return json;
  }

  /// Returns a new [IosPushOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IosPushOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IosPushOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IosPushOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IosPushOptions(
        threadId: mapValueOfType<String>(json, r'threadId'),
        category: mapValueOfType<String>(json, r'category'),
        interruptionLevel: IosPushOptionsInterruptionLevelEnum.fromJson(json[r'interruptionLevel']),
      );
    }
    return null;
  }

  static List<IosPushOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IosPushOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IosPushOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IosPushOptions> mapFromJson(dynamic json) {
    final map = <String, IosPushOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IosPushOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IosPushOptions-objects as value to a dart map
  static Map<String, List<IosPushOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IosPushOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IosPushOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class IosPushOptionsInterruptionLevelEnum {
  /// Instantiate a new enum with the provided [value].
  const IosPushOptionsInterruptionLevelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const passive = IosPushOptionsInterruptionLevelEnum._(r'passive');
  static const active = IosPushOptionsInterruptionLevelEnum._(r'active');
  static const timeSensitive = IosPushOptionsInterruptionLevelEnum._(r'time-sensitive');

  /// List of all possible values in this [enum][IosPushOptionsInterruptionLevelEnum].
  static const values = <IosPushOptionsInterruptionLevelEnum>[
    passive,
    active,
    timeSensitive,
  ];

  static IosPushOptionsInterruptionLevelEnum? fromJson(dynamic value) => IosPushOptionsInterruptionLevelEnumTypeTransformer().decode(value);

  static List<IosPushOptionsInterruptionLevelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IosPushOptionsInterruptionLevelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IosPushOptionsInterruptionLevelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IosPushOptionsInterruptionLevelEnum] to String,
/// and [decode] dynamic data back to [IosPushOptionsInterruptionLevelEnum].
class IosPushOptionsInterruptionLevelEnumTypeTransformer {
  factory IosPushOptionsInterruptionLevelEnumTypeTransformer() => _instance ??= const IosPushOptionsInterruptionLevelEnumTypeTransformer._();

  const IosPushOptionsInterruptionLevelEnumTypeTransformer._();

  String encode(IosPushOptionsInterruptionLevelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IosPushOptionsInterruptionLevelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IosPushOptionsInterruptionLevelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'passive': return IosPushOptionsInterruptionLevelEnum.passive;
        case r'active': return IosPushOptionsInterruptionLevelEnum.active;
        case r'time-sensitive': return IosPushOptionsInterruptionLevelEnum.timeSensitive;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IosPushOptionsInterruptionLevelEnumTypeTransformer] instance.
  static IosPushOptionsInterruptionLevelEnumTypeTransformer? _instance;
}


