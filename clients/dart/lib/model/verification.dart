//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Verification {
  /// Returns a new [Verification] instance.
  Verification({
    required this.id,
    required this.channel,
    required this.to,
    required this.expiresAt,
    this.sandboxCode,
  });

  String id;

  VerificationChannelEnum channel;

  String to;

  String expiresAt;

  /// Only with a sandbox key. Never returned for a live send, to anyone, including the workspace that asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sandboxCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Verification &&
    other.id == id &&
    other.channel == channel &&
    other.to == to &&
    other.expiresAt == expiresAt &&
    other.sandboxCode == sandboxCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (channel.hashCode) +
    (to.hashCode) +
    (expiresAt.hashCode) +
    (sandboxCode == null ? 0 : sandboxCode!.hashCode);

  @override
  String toString() => 'Verification[id=$id, channel=$channel, to=$to, expiresAt=$expiresAt, sandboxCode=$sandboxCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'channel'] = this.channel;
      json[r'to'] = this.to;
      json[r'expiresAt'] = this.expiresAt;
    if (this.sandboxCode != null) {
      json[r'sandboxCode'] = this.sandboxCode;
    } else {
      json[r'sandboxCode'] = null;
    }
    return json;
  }

  /// Returns a new [Verification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Verification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Verification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Verification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Verification(
        id: mapValueOfType<String>(json, r'id')!,
        channel: VerificationChannelEnum.fromJson(json[r'channel'])!,
        to: mapValueOfType<String>(json, r'to')!,
        expiresAt: mapValueOfType<String>(json, r'expiresAt')!,
        sandboxCode: mapValueOfType<String>(json, r'sandboxCode'),
      );
    }
    return null;
  }

  static List<Verification> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Verification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Verification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Verification> mapFromJson(dynamic json) {
    final map = <String, Verification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Verification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Verification-objects as value to a dart map
  static Map<String, List<Verification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Verification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Verification.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'channel',
    'to',
    'expiresAt',
  };
}


class VerificationChannelEnum {
  /// Instantiate a new enum with the provided [value].
  const VerificationChannelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sms = VerificationChannelEnum._(r'sms');
  static const email = VerificationChannelEnum._(r'email');

  /// List of all possible values in this [enum][VerificationChannelEnum].
  static const values = <VerificationChannelEnum>[
    sms,
    email,
  ];

  static VerificationChannelEnum? fromJson(dynamic value) => VerificationChannelEnumTypeTransformer().decode(value);

  static List<VerificationChannelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationChannelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationChannelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationChannelEnum] to String,
/// and [decode] dynamic data back to [VerificationChannelEnum].
class VerificationChannelEnumTypeTransformer {
  factory VerificationChannelEnumTypeTransformer() => _instance ??= const VerificationChannelEnumTypeTransformer._();

  const VerificationChannelEnumTypeTransformer._();

  String encode(VerificationChannelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationChannelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationChannelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sms': return VerificationChannelEnum.sms;
        case r'email': return VerificationChannelEnum.email;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationChannelEnumTypeTransformer] instance.
  static VerificationChannelEnumTypeTransformer? _instance;
}


