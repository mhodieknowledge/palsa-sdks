//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Balance {
  /// Returns a new [Balance] instance.
  Balance({
    required this.channel,
    required this.included,
    required this.purchased,
    required this.reservedIncluded,
    required this.reservedPurchased,
    required this.usedIncluded,
    required this.usedPurchased,
    required this.available,
    this.periodEnd,
  });

  Channel channel;

  /// The plan's allowance for this period.
  int included;

  /// Credit bought separately
  int purchased;

  /// Included units promised to sends in flight.
  int reservedIncluded;

  /// Purchased units promised to sends in flight.
  int reservedPurchased;

  int usedIncluded;

  int usedPurchased;

  /// `included + purchased - reserved`, and what a send is actually checked against. It cannot go below nothing. 
  int available;

  /// When the included allowance expires. Purchased units are unaffected by it.
  String? periodEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Balance &&
    other.channel == channel &&
    other.included == included &&
    other.purchased == purchased &&
    other.reservedIncluded == reservedIncluded &&
    other.reservedPurchased == reservedPurchased &&
    other.usedIncluded == usedIncluded &&
    other.usedPurchased == usedPurchased &&
    other.available == available &&
    other.periodEnd == periodEnd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel.hashCode) +
    (included.hashCode) +
    (purchased.hashCode) +
    (reservedIncluded.hashCode) +
    (reservedPurchased.hashCode) +
    (usedIncluded.hashCode) +
    (usedPurchased.hashCode) +
    (available.hashCode) +
    (periodEnd == null ? 0 : periodEnd!.hashCode);

  @override
  String toString() => 'Balance[channel=$channel, included=$included, purchased=$purchased, reservedIncluded=$reservedIncluded, reservedPurchased=$reservedPurchased, usedIncluded=$usedIncluded, usedPurchased=$usedPurchased, available=$available, periodEnd=$periodEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channel'] = this.channel;
      json[r'included'] = this.included;
      json[r'purchased'] = this.purchased;
      json[r'reservedIncluded'] = this.reservedIncluded;
      json[r'reservedPurchased'] = this.reservedPurchased;
      json[r'usedIncluded'] = this.usedIncluded;
      json[r'usedPurchased'] = this.usedPurchased;
      json[r'available'] = this.available;
    if (this.periodEnd != null) {
      json[r'periodEnd'] = this.periodEnd;
    } else {
      json[r'periodEnd'] = null;
    }
    return json;
  }

  /// Returns a new [Balance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Balance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Balance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Balance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Balance(
        channel: Channel.fromJson(json[r'channel'])!,
        included: mapValueOfType<int>(json, r'included')!,
        purchased: mapValueOfType<int>(json, r'purchased')!,
        reservedIncluded: mapValueOfType<int>(json, r'reservedIncluded')!,
        reservedPurchased: mapValueOfType<int>(json, r'reservedPurchased')!,
        usedIncluded: mapValueOfType<int>(json, r'usedIncluded')!,
        usedPurchased: mapValueOfType<int>(json, r'usedPurchased')!,
        available: mapValueOfType<int>(json, r'available')!,
        periodEnd: mapValueOfType<String>(json, r'periodEnd'),
      );
    }
    return null;
  }

  static List<Balance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Balance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Balance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Balance> mapFromJson(dynamic json) {
    final map = <String, Balance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Balance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Balance-objects as value to a dart map
  static Map<String, List<Balance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Balance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Balance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel',
    'included',
    'purchased',
    'reservedIncluded',
    'reservedPurchased',
    'usedIncluded',
    'usedPurchased',
    'available',
  };
}

