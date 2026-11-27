//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class WebPushOptions {
  /// Returns a new [WebPushOptions] instance.
  WebPushOptions({
    this.icon,
    this.requireInteraction,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// Keep it on screen until the person acts on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireInteraction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebPushOptions &&
    other.icon == icon &&
    other.requireInteraction == requireInteraction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon!.hashCode) +
    (requireInteraction == null ? 0 : requireInteraction!.hashCode);

  @override
  String toString() => 'WebPushOptions[icon=$icon, requireInteraction=$requireInteraction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.requireInteraction != null) {
      json[r'requireInteraction'] = this.requireInteraction;
    } else {
      json[r'requireInteraction'] = null;
    }
    return json;
  }

  /// Returns a new [WebPushOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebPushOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebPushOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebPushOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebPushOptions(
        icon: mapValueOfType<String>(json, r'icon'),
        requireInteraction: mapValueOfType<bool>(json, r'requireInteraction'),
      );
    }
    return null;
  }

  static List<WebPushOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebPushOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebPushOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebPushOptions> mapFromJson(dynamic json) {
    final map = <String, WebPushOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebPushOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebPushOptions-objects as value to a dart map
  static Map<String, List<WebPushOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebPushOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebPushOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

