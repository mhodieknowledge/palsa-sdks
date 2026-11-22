//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of palsa_api;

class NotificationSummary {
  /// Returns a new [NotificationSummary] instance.
  NotificationSummary({
    required this.id,
    required this.kind,
    required this.name,
    required this.status,
    required this.recipientCount,
    required this.createdAt,
  });

  String id;

  String kind;

  String name;

  String status;

  int recipientCount;

  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationSummary &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.status == status &&
    other.recipientCount == recipientCount &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (kind.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (recipientCount.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'NotificationSummary[id=$id, kind=$kind, name=$name, status=$status, recipientCount=$recipientCount, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'kind'] = this.kind;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'recipient_count'] = this.recipientCount;
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [NotificationSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationSummary(
        id: mapValueOfType<String>(json, r'id')!,
        kind: mapValueOfType<String>(json, r'kind')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: mapValueOfType<String>(json, r'status')!,
        recipientCount: mapValueOfType<int>(json, r'recipient_count')!,
        createdAt: mapValueOfType<String>(json, r'created_at')!,
      );
    }
    return null;
  }

  static List<NotificationSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationSummary> mapFromJson(dynamic json) {
    final map = <String, NotificationSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationSummary-objects as value to a dart map
  static Map<String, List<NotificationSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'kind',
    'name',
    'status',
    'recipient_count',
    'created_at',
  };
}

