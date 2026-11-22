//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class Notification {
  /// Returns a new [Notification] instance.
  Notification({
    required this.id,
    required this.kind,
    this.name,
    required this.status,
    this.reservedUnits = const {},
    this.settledUnits = const {},
    required this.recipientCount,
    this.scheduledAt,
    this.startedAt,
    this.finishedAt,
    this.failureReason,
    this.metadata,
    required this.createdAt,
    this.deliveries = const {},
  });

  String id;

  String kind;

  String? name;

  String status;

  /// Billable units, per channel.
  Map<String, int> reservedUnits;

  /// Billable units, per channel.
  Map<String, int> settledUnits;

  int recipientCount;

  String? scheduledAt;

  String? startedAt;

  String? finishedAt;

  String? failureReason;

  /// The JSON you sent
  String? metadata;

  String createdAt;

  /// How many deliveries are in each state.
  Map<String, int> deliveries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Notification &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.status == status &&
    _deepEquality.equals(other.reservedUnits, reservedUnits) &&
    _deepEquality.equals(other.settledUnits, settledUnits) &&
    other.recipientCount == recipientCount &&
    other.scheduledAt == scheduledAt &&
    other.startedAt == startedAt &&
    other.finishedAt == finishedAt &&
    other.failureReason == failureReason &&
    other.metadata == metadata &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.deliveries, deliveries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (kind.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status.hashCode) +
    (reservedUnits.hashCode) +
    (settledUnits.hashCode) +
    (recipientCount.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt.hashCode) +
    (deliveries.hashCode);

  @override
  String toString() => 'Notification[id=$id, kind=$kind, name=$name, status=$status, reservedUnits=$reservedUnits, settledUnits=$settledUnits, recipientCount=$recipientCount, scheduledAt=$scheduledAt, startedAt=$startedAt, finishedAt=$finishedAt, failureReason=$failureReason, metadata=$metadata, createdAt=$createdAt, deliveries=$deliveries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'kind'] = this.kind;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'status'] = this.status;
      json[r'reserved_units'] = this.reservedUnits;
      json[r'settled_units'] = this.settledUnits;
      json[r'recipient_count'] = this.recipientCount;
    if (this.scheduledAt != null) {
      json[r'scheduled_at'] = this.scheduledAt;
    } else {
      json[r'scheduled_at'] = null;
    }
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt;
    } else {
      json[r'started_at'] = null;
    }
    if (this.finishedAt != null) {
      json[r'finished_at'] = this.finishedAt;
    } else {
      json[r'finished_at'] = null;
    }
    if (this.failureReason != null) {
      json[r'failure_reason'] = this.failureReason;
    } else {
      json[r'failure_reason'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
      json[r'created_at'] = this.createdAt;
      json[r'deliveries'] = this.deliveries;
    return json;
  }

  /// Returns a new [Notification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Notification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Notification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Notification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Notification(
        id: mapValueOfType<String>(json, r'id')!,
        kind: mapValueOfType<String>(json, r'kind')!,
        name: mapValueOfType<String>(json, r'name'),
        status: mapValueOfType<String>(json, r'status')!,
        reservedUnits: mapCastOfType<String, int>(json, r'reserved_units')!,
        settledUnits: mapCastOfType<String, int>(json, r'settled_units')!,
        recipientCount: mapValueOfType<int>(json, r'recipient_count')!,
        scheduledAt: mapValueOfType<String>(json, r'scheduled_at'),
        startedAt: mapValueOfType<String>(json, r'started_at'),
        finishedAt: mapValueOfType<String>(json, r'finished_at'),
        failureReason: mapValueOfType<String>(json, r'failure_reason'),
        metadata: mapValueOfType<String>(json, r'metadata'),
        createdAt: mapValueOfType<String>(json, r'created_at')!,
        deliveries: mapCastOfType<String, int>(json, r'deliveries')!,
      );
    }
    return null;
  }

  static List<Notification> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Notification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Notification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Notification> mapFromJson(dynamic json) {
    final map = <String, Notification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Notification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Notification-objects as value to a dart map
  static Map<String, List<Notification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Notification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Notification.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'kind',
    'status',
    'reserved_units',
    'settled_units',
    'recipient_count',
    'created_at',
    'deliveries',
  };
}

