//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Error {
  /// Returns a new [Error] instance.
  Error({
    required this.code,
    required this.message,
    this.fields = const {},
    this.detail = const {},
    this.requestId,
  });

  ErrorCodeEnum code;

  String message;

  /// Validation errors by field name.
  Map<String, List<String>> fields;

  /// Machine-readable specifics, such as the channel and shortfall on QUOTA_EXCEEDED.
  Map<String, Object> detail;

  /// Quote this when asking us about a request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Error &&
    other.code == code &&
    other.message == message &&
    _deepEquality.equals(other.fields, fields) &&
    _deepEquality.equals(other.detail, detail) &&
    other.requestId == requestId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message.hashCode) +
    (fields.hashCode) +
    (detail.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode);

  @override
  String toString() => 'Error[code=$code, message=$message, fields=$fields, detail=$detail, requestId=$requestId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'message'] = this.message;
      json[r'fields'] = this.fields;
      json[r'detail'] = this.detail;
    if (this.requestId != null) {
      json[r'requestId'] = this.requestId;
    } else {
      json[r'requestId'] = null;
    }
    return json;
  }

  /// Returns a new [Error] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Error? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Error[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Error[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Error(
        code: ErrorCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message')!,
        fields: json[r'fields'] == null
          ? const {}
            : (mapCastOfType<String, List>(json, r'fields') ?? const {})
                .map((key, value) => MapEntry(key, value.cast<String>())),
        detail: mapCastOfType<String, Object>(json, r'detail') ?? const {},
        requestId: mapValueOfType<String>(json, r'requestId'),
      );
    }
    return null;
  }

  static List<Error> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Error>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Error.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Error> mapFromJson(dynamic json) {
    final map = <String, Error>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Error.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Error-objects as value to a dart map
  static Map<String, List<Error>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Error>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Error.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'message',
  };
}


class ErrorCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ErrorCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VALIDATION_FAILED = ErrorCodeEnum._(r'VALIDATION_FAILED');
  static const UNAUTHENTICATED = ErrorCodeEnum._(r'UNAUTHENTICATED');
  static const FORBIDDEN = ErrorCodeEnum._(r'FORBIDDEN');
  static const NOT_FOUND = ErrorCodeEnum._(r'NOT_FOUND');
  static const CONFLICT = ErrorCodeEnum._(r'CONFLICT');
  static const QUOTA_EXCEEDED = ErrorCodeEnum._(r'QUOTA_EXCEEDED');
  static const RATE_LIMITED = ErrorCodeEnum._(r'RATE_LIMITED');
  static const PROVIDER_ERROR = ErrorCodeEnum._(r'PROVIDER_ERROR');
  static const INTERNAL = ErrorCodeEnum._(r'INTERNAL');

  /// List of all possible values in this [enum][ErrorCodeEnum].
  static const values = <ErrorCodeEnum>[
    VALIDATION_FAILED,
    UNAUTHENTICATED,
    FORBIDDEN,
    NOT_FOUND,
    CONFLICT,
    QUOTA_EXCEEDED,
    RATE_LIMITED,
    PROVIDER_ERROR,
    INTERNAL,
  ];

  static ErrorCodeEnum? fromJson(dynamic value) => ErrorCodeEnumTypeTransformer().decode(value);

  static List<ErrorCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ErrorCodeEnum] to String,
/// and [decode] dynamic data back to [ErrorCodeEnum].
class ErrorCodeEnumTypeTransformer {
  factory ErrorCodeEnumTypeTransformer() => _instance ??= const ErrorCodeEnumTypeTransformer._();

  const ErrorCodeEnumTypeTransformer._();

  String encode(ErrorCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ErrorCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ErrorCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VALIDATION_FAILED': return ErrorCodeEnum.VALIDATION_FAILED;
        case r'UNAUTHENTICATED': return ErrorCodeEnum.UNAUTHENTICATED;
        case r'FORBIDDEN': return ErrorCodeEnum.FORBIDDEN;
        case r'NOT_FOUND': return ErrorCodeEnum.NOT_FOUND;
        case r'CONFLICT': return ErrorCodeEnum.CONFLICT;
        case r'QUOTA_EXCEEDED': return ErrorCodeEnum.QUOTA_EXCEEDED;
        case r'RATE_LIMITED': return ErrorCodeEnum.RATE_LIMITED;
        case r'PROVIDER_ERROR': return ErrorCodeEnum.PROVIDER_ERROR;
        case r'INTERNAL': return ErrorCodeEnum.INTERNAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ErrorCodeEnumTypeTransformer] instance.
  static ErrorCodeEnumTypeTransformer? _instance;
}


