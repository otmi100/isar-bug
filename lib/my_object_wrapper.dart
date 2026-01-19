import 'package:isar_analyzer/change_tracker.dart';
import 'package:isar_community/isar.dart';
import 'package:uuid/uuid.dart';

@collection
class MyObjectWrapper extends ChangeTracker<UuidValue> {
  @Index()
  final String stringifiedId;

  final Id? isarId;

  @Index()
  final String? userId;
  @Index()
  final String? customerId;

  const MyObjectWrapper({
    required this.stringifiedId,
    required this.isarId,
    required this.userId,
    required this.customerId,
    required super.dataState,
    super.lastUpdated,
    super.isDeleted,
    super.lastModified,
    super.createdAt,
  });

  @override
  @ignore
  UuidValue get object => UuidValue.fromString(stringifiedId);
}
