//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class VerificationRequest {
  /// Returns a new [VerificationRequest] instance.
  VerificationRequest({
    required this.channel,
    required this.to,
    this.length = 6,
    this.expiresInSeconds = 600,
    this.template,
    this.flow,
  });

  VerificationRequestChannelEnum channel;

  String to;

  /// Minimum value: 4
  /// Maximum value: 8
  int length;

  /// Minimum value: 60
  /// Maximum value: 3600
  int expiresInSeconds;

  /// Use `{{code}}` and `{{minutes}}`. Defaults to \"Your code is {{code}}. It expires in {{minutes}} minutes.\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? template;

  /// The name of one of your active verification flows, set up in the console under Verification. Its expiry, attempt ceiling and rate apply to this challenge.  A name matching no active flow is refused with `NOT_FOUND` rather than falling back to the defaults, since a silent fallback is how somebody comes to believe a code allows three guesses when it allows five. A flow's rate applies in addition to the built-in ceiling of five requests per address every fifteen minutes, so a flow can tighten it and cannot loosen it. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerificationRequest &&
    other.channel == channel &&
    other.to == to &&
    other.length == length &&
    other.expiresInSeconds == expiresInSeconds &&
    other.template == template &&
    other.flow == flow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel.hashCode) +
    (to.hashCode) +
    (length.hashCode) +
    (expiresInSeconds.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (flow == null ? 0 : flow!.hashCode);

  @override
  String toString() => 'VerificationRequest[channel=$channel, to=$to, length=$length, expiresInSeconds=$expiresInSeconds, template=$template, flow=$flow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channel'] = this.channel;
      json[r'to'] = this.to;
      json[r'length'] = this.length;
      json[r'expiresInSeconds'] = this.expiresInSeconds;
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    return json;
  }

  /// Returns a new [VerificationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerificationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerificationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerificationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerificationRequest(
        channel: VerificationRequestChannelEnum.fromJson(json[r'channel'])!,
        to: mapValueOfType<String>(json, r'to')!,
        length: mapValueOfType<int>(json, r'length') ?? 6,
        expiresInSeconds: mapValueOfType<int>(json, r'expiresInSeconds') ?? 600,
        template: mapValueOfType<String>(json, r'template'),
        flow: mapValueOfType<String>(json, r'flow'),
      );
    }
    return null;
  }

  static List<VerificationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerificationRequest> mapFromJson(dynamic json) {
    final map = <String, VerificationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerificationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerificationRequest-objects as value to a dart map
  static Map<String, List<VerificationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerificationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerificationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel',
    'to',
  };
}


class VerificationRequestChannelEnum {
  /// Instantiate a new enum with the provided [value].
  const VerificationRequestChannelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sms = VerificationRequestChannelEnum._(r'sms');
  static const email = VerificationRequestChannelEnum._(r'email');

  /// List of all possible values in this [enum][VerificationRequestChannelEnum].
  static const values = <VerificationRequestChannelEnum>[
    sms,
    email,
  ];

  static VerificationRequestChannelEnum? fromJson(dynamic value) => VerificationRequestChannelEnumTypeTransformer().decode(value);

  static List<VerificationRequestChannelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationRequestChannelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationRequestChannelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationRequestChannelEnum] to String,
/// and [decode] dynamic data back to [VerificationRequestChannelEnum].
class VerificationRequestChannelEnumTypeTransformer {
  factory VerificationRequestChannelEnumTypeTransformer() => _instance ??= const VerificationRequestChannelEnumTypeTransformer._();

  const VerificationRequestChannelEnumTypeTransformer._();

  String encode(VerificationRequestChannelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationRequestChannelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationRequestChannelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sms': return VerificationRequestChannelEnum.sms;
        case r'email': return VerificationRequestChannelEnum.email;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationRequestChannelEnumTypeTransformer] instance.
  static VerificationRequestChannelEnumTypeTransformer? _instance;
}


