//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class UpdatePushAppRequest {
  /// Returns a new [UpdatePushAppRequest] instance.
  UpdatePushAppRequest({
    this.name,
    this.isDefault,
    this.androidPackage,
    this.iosBundleId,
    this.webOrigin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Only true is accepted. Make this verified app the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  String? androidPackage;

  String? iosBundleId;

  String? webOrigin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePushAppRequest &&
    other.name == name &&
    other.isDefault == isDefault &&
    other.androidPackage == androidPackage &&
    other.iosBundleId == iosBundleId &&
    other.webOrigin == webOrigin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (androidPackage == null ? 0 : androidPackage!.hashCode) +
    (iosBundleId == null ? 0 : iosBundleId!.hashCode) +
    (webOrigin == null ? 0 : webOrigin!.hashCode);

  @override
  String toString() => 'UpdatePushAppRequest[name=$name, isDefault=$isDefault, androidPackage=$androidPackage, iosBundleId=$iosBundleId, webOrigin=$webOrigin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.androidPackage != null) {
      json[r'androidPackage'] = this.androidPackage;
    } else {
      json[r'androidPackage'] = null;
    }
    if (this.iosBundleId != null) {
      json[r'iosBundleId'] = this.iosBundleId;
    } else {
      json[r'iosBundleId'] = null;
    }
    if (this.webOrigin != null) {
      json[r'webOrigin'] = this.webOrigin;
    } else {
      json[r'webOrigin'] = null;
    }
    return json;
  }

  /// Returns a new [UpdatePushAppRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePushAppRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdatePushAppRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdatePushAppRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdatePushAppRequest(
        name: mapValueOfType<String>(json, r'name'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        androidPackage: mapValueOfType<String>(json, r'androidPackage'),
        iosBundleId: mapValueOfType<String>(json, r'iosBundleId'),
        webOrigin: mapValueOfType<String>(json, r'webOrigin'),
      );
    }
    return null;
  }

  static List<UpdatePushAppRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePushAppRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePushAppRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdatePushAppRequest> mapFromJson(dynamic json) {
    final map = <String, UpdatePushAppRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdatePushAppRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdatePushAppRequest-objects as value to a dart map
  static Map<String, List<UpdatePushAppRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdatePushAppRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdatePushAppRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

