import 'package:uuid/uuid_value.dart';

import 'change_tracker.dart';

class MyObject extends ChangeTracker<UuidValue> {
  @override
  final UuidValue id;

  final String name;

  const MyObject({
    required this.id,
    required this.name,
    required super.dataState,
    super.lastUpdated,
    super.isDeleted,
    super.lastModified,
    super.createdAt,
  });
}
