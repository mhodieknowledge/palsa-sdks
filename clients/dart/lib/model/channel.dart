//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

/// SMS is charged per 160-character segment, and one character outside GSM 03.38 forces the whole message to Unicode, which more than halves what fits. Email is one unit per message. Push costs no prepaid units. 
class Channel {
  /// Instantiate a new enum with the provided [value].
  const Channel._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sms = Channel._(r'sms');
  static const email = Channel._(r'email');
  static const push = Channel._(r'push');

  /// List of all possible values in this [enum][Channel].
  static const values = <Channel>[
    sms,
    email,
    push,
  ];

  static Channel? fromJson(dynamic value) => ChannelTypeTransformer().decode(value);

  static List<Channel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Channel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Channel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Channel] to String,
/// and [decode] dynamic data back to [Channel].
class ChannelTypeTransformer {
  factory ChannelTypeTransformer() => _instance ??= const ChannelTypeTransformer._();

  const ChannelTypeTransformer._();

  String encode(Channel data) => data.value;

  /// Decodes a [dynamic value][data] to a Channel.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Channel? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sms': return Channel.sms;
        case r'email': return Channel.email;
        case r'push': return Channel.push;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChannelTypeTransformer] instance.
  static ChannelTypeTransformer? _instance;
}

