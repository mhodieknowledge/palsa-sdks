//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class SendingDomainRecordsInner {
  /// Returns a new [SendingDomainRecordsInner] instance.
  SendingDomainRecordsInner({
    required this.purpose,
    required this.type,
    required this.name,
    required this.value,
    this.priority,
    required this.required_,
  });

  SendingDomainRecordsInnerPurposeEnum purpose;

  SendingDomainRecordsInnerTypeEnum type;

  String name;

  String value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  bool required_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingDomainRecordsInner &&
    other.purpose == purpose &&
    other.type == type &&
    other.name == name &&
    other.value == value &&
    other.priority == priority &&
    other.required_ == required_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (purpose.hashCode) +
    (type.hashCode) +
    (name.hashCode) +
    (value.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (required_.hashCode);

  @override
  String toString() => 'SendingDomainRecordsInner[purpose=$purpose, type=$type, name=$name, value=$value, priority=$priority, required_=$required_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'purpose'] = this.purpose;
      json[r'type'] = this.type;
      json[r'name'] = this.name;
      json[r'value'] = this.value;
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
      json[r'required'] = this.required_;
    return json;
  }

  /// Returns a new [SendingDomainRecordsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingDomainRecordsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingDomainRecordsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingDomainRecordsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingDomainRecordsInner(
        purpose: SendingDomainRecordsInnerPurposeEnum.fromJson(json[r'purpose'])!,
        type: SendingDomainRecordsInnerTypeEnum.fromJson(json[r'type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        value: mapValueOfType<String>(json, r'value')!,
        priority: mapValueOfType<int>(json, r'priority'),
        required_: mapValueOfType<bool>(json, r'required')!,
      );
    }
    return null;
  }

  static List<SendingDomainRecordsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainRecordsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainRecordsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingDomainRecordsInner> mapFromJson(dynamic json) {
    final map = <String, SendingDomainRecordsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingDomainRecordsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingDomainRecordsInner-objects as value to a dart map
  static Map<String, List<SendingDomainRecordsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingDomainRecordsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingDomainRecordsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'purpose',
    'type',
    'name',
    'value',
    'required',
  };
}


class SendingDomainRecordsInnerPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainRecordsInnerPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dkim = SendingDomainRecordsInnerPurposeEnum._(r'dkim');
  static const mailFromMx = SendingDomainRecordsInnerPurposeEnum._(r'mail_from_mx');
  static const mailFromSpf = SendingDomainRecordsInnerPurposeEnum._(r'mail_from_spf');
  static const dmarc = SendingDomainRecordsInnerPurposeEnum._(r'dmarc');

  /// List of all possible values in this [enum][SendingDomainRecordsInnerPurposeEnum].
  static const values = <SendingDomainRecordsInnerPurposeEnum>[
    dkim,
    mailFromMx,
    mailFromSpf,
    dmarc,
  ];

  static SendingDomainRecordsInnerPurposeEnum? fromJson(dynamic value) => SendingDomainRecordsInnerPurposeEnumTypeTransformer().decode(value);

  static List<SendingDomainRecordsInnerPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainRecordsInnerPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainRecordsInnerPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainRecordsInnerPurposeEnum] to String,
/// and [decode] dynamic data back to [SendingDomainRecordsInnerPurposeEnum].
class SendingDomainRecordsInnerPurposeEnumTypeTransformer {
  factory SendingDomainRecordsInnerPurposeEnumTypeTransformer() => _instance ??= const SendingDomainRecordsInnerPurposeEnumTypeTransformer._();

  const SendingDomainRecordsInnerPurposeEnumTypeTransformer._();

  String encode(SendingDomainRecordsInnerPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainRecordsInnerPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainRecordsInnerPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'dkim': return SendingDomainRecordsInnerPurposeEnum.dkim;
        case r'mail_from_mx': return SendingDomainRecordsInnerPurposeEnum.mailFromMx;
        case r'mail_from_spf': return SendingDomainRecordsInnerPurposeEnum.mailFromSpf;
        case r'dmarc': return SendingDomainRecordsInnerPurposeEnum.dmarc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainRecordsInnerPurposeEnumTypeTransformer] instance.
  static SendingDomainRecordsInnerPurposeEnumTypeTransformer? _instance;
}



class SendingDomainRecordsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingDomainRecordsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CNAME = SendingDomainRecordsInnerTypeEnum._(r'CNAME');
  static const MX = SendingDomainRecordsInnerTypeEnum._(r'MX');
  static const TXT = SendingDomainRecordsInnerTypeEnum._(r'TXT');

  /// List of all possible values in this [enum][SendingDomainRecordsInnerTypeEnum].
  static const values = <SendingDomainRecordsInnerTypeEnum>[
    CNAME,
    MX,
    TXT,
  ];

  static SendingDomainRecordsInnerTypeEnum? fromJson(dynamic value) => SendingDomainRecordsInnerTypeEnumTypeTransformer().decode(value);

  static List<SendingDomainRecordsInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingDomainRecordsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingDomainRecordsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingDomainRecordsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [SendingDomainRecordsInnerTypeEnum].
class SendingDomainRecordsInnerTypeEnumTypeTransformer {
  factory SendingDomainRecordsInnerTypeEnumTypeTransformer() => _instance ??= const SendingDomainRecordsInnerTypeEnumTypeTransformer._();

  const SendingDomainRecordsInnerTypeEnumTypeTransformer._();

  String encode(SendingDomainRecordsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingDomainRecordsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingDomainRecordsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CNAME': return SendingDomainRecordsInnerTypeEnum.CNAME;
        case r'MX': return SendingDomainRecordsInnerTypeEnum.MX;
        case r'TXT': return SendingDomainRecordsInnerTypeEnum.TXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingDomainRecordsInnerTypeEnumTypeTransformer] instance.
  static SendingDomainRecordsInnerTypeEnumTypeTransformer? _instance;
}


