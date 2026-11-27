//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class AndroidPushOptions {
  /// Returns a new [AndroidPushOptions] instance.
  AndroidPushOptions({
    this.channelId,
    this.tag,
    this.color,
  });

  /// The Android notification channel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channelId;

  /// A notification with the same tag replaces the one shown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AndroidPushOptions &&
    other.channelId == channelId &&
    other.tag == tag &&
    other.color == color;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelId == null ? 0 : channelId!.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (color == null ? 0 : color!.hashCode);

  @override
  String toString() => 'AndroidPushOptions[channelId=$channelId, tag=$tag, color=$color]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channelId != null) {
      json[r'channelId'] = this.channelId;
    } else {
      json[r'channelId'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    return json;
  }

  /// Returns a new [AndroidPushOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AndroidPushOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AndroidPushOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AndroidPushOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AndroidPushOptions(
        channelId: mapValueOfType<String>(json, r'channelId'),
        tag: mapValueOfType<String>(json, r'tag'),
        color: mapValueOfType<String>(json, r'color'),
      );
    }
    return null;
  }

  static List<AndroidPushOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AndroidPushOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AndroidPushOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AndroidPushOptions> mapFromJson(dynamic json) {
    final map = <String, AndroidPushOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AndroidPushOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AndroidPushOptions-objects as value to a dart map
  static Map<String, List<AndroidPushOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AndroidPushOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AndroidPushOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

