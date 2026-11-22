//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class SendResult {
  /// Returns a new [SendResult] instance.
  SendResult({
    required this.id,
    required this.status,
    required this.mode,
    required this.recipients,
    this.units = const {},
    required this.skipped,
    this.warnings = const [],
  });

  String id;

  /// `running`, `scheduled` when held or scheduled, or `pending_approval`.
  String status;

  SendResultModeEnum mode;

  int recipients;

  /// Billable units, per channel.
  Map<String, int> units;

  /// How many recipients were left out. The quote says why.
  int skipped;

  /// Things that did not stop the send.
  List<Blocker> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendResult &&
    other.id == id &&
    other.status == status &&
    other.mode == mode &&
    other.recipients == recipients &&
    _deepEquality.equals(other.units, units) &&
    other.skipped == skipped &&
    _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status.hashCode) +
    (mode.hashCode) +
    (recipients.hashCode) +
    (units.hashCode) +
    (skipped.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'SendResult[id=$id, status=$status, mode=$mode, recipients=$recipients, units=$units, skipped=$skipped, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'status'] = this.status;
      json[r'mode'] = this.mode;
      json[r'recipients'] = this.recipients;
      json[r'units'] = this.units;
      json[r'skipped'] = this.skipped;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [SendResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendResult(
        id: mapValueOfType<String>(json, r'id')!,
        status: mapValueOfType<String>(json, r'status')!,
        mode: SendResultModeEnum.fromJson(json[r'mode'])!,
        recipients: mapValueOfType<int>(json, r'recipients')!,
        units: mapCastOfType<String, int>(json, r'units')!,
        skipped: mapValueOfType<int>(json, r'skipped')!,
        warnings: Blocker.listFromJson(json[r'warnings']),
      );
    }
    return null;
  }

  static List<SendResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendResult> mapFromJson(dynamic json) {
    final map = <String, SendResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendResult-objects as value to a dart map
  static Map<String, List<SendResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
    'mode',
    'recipients',
    'units',
    'skipped',
    'warnings',
  };
}


class SendResultModeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendResultModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const live = SendResultModeEnum._(r'live');
  static const sandbox = SendResultModeEnum._(r'sandbox');

  /// List of all possible values in this [enum][SendResultModeEnum].
  static const values = <SendResultModeEnum>[
    live,
    sandbox,
  ];

  static SendResultModeEnum? fromJson(dynamic value) => SendResultModeEnumTypeTransformer().decode(value);

  static List<SendResultModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendResultModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendResultModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendResultModeEnum] to String,
/// and [decode] dynamic data back to [SendResultModeEnum].
class SendResultModeEnumTypeTransformer {
  factory SendResultModeEnumTypeTransformer() => _instance ??= const SendResultModeEnumTypeTransformer._();

  const SendResultModeEnumTypeTransformer._();

  String encode(SendResultModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendResultModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendResultModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'live': return SendResultModeEnum.live;
        case r'sandbox': return SendResultModeEnum.sandbox;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendResultModeEnumTypeTransformer] instance.
  static SendResultModeEnumTypeTransformer? _instance;
}


