//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class SendPushAppOwnershipCodeRequest {
  /// Returns a new [SendPushAppOwnershipCodeRequest] instance.
  SendPushAppOwnershipCodeRequest({
    required this.deviceToken,
  });

  String deviceToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendPushAppOwnershipCodeRequest &&
    other.deviceToken == deviceToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceToken.hashCode);

  @override
  String toString() => 'SendPushAppOwnershipCodeRequest[deviceToken=$deviceToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceToken'] = this.deviceToken;
    return json;
  }

  /// Returns a new [SendPushAppOwnershipCodeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendPushAppOwnershipCodeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendPushAppOwnershipCodeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendPushAppOwnershipCodeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendPushAppOwnershipCodeRequest(
        deviceToken: mapValueOfType<String>(json, r'deviceToken')!,
      );
    }
    return null;
  }

  static List<SendPushAppOwnershipCodeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendPushAppOwnershipCodeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendPushAppOwnershipCodeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendPushAppOwnershipCodeRequest> mapFromJson(dynamic json) {
    final map = <String, SendPushAppOwnershipCodeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendPushAppOwnershipCodeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendPushAppOwnershipCodeRequest-objects as value to a dart map
  static Map<String, List<SendPushAppOwnershipCodeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendPushAppOwnershipCodeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendPushAppOwnershipCodeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deviceToken',
  };
}

