import 'package:uuid/uuid_value.dart';

import 'change_tracker.dart';

class MyObject extends ChangeTracker<UuidValue> {
  @override
  final UuidValue object;

  final String name;

  const MyObject({
    required this.object,
    required this.name,
    required super.dataState,
    super.lastUpdated,
    super.isDeleted,
    super.lastModified,
    super.createdAt,
  });
}
