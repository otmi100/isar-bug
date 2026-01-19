import 'package:isar_analyzer/change_tracker.dart';
import 'package:isar_community/isar.dart';
import 'package:uuid/uuid.dart';

@collection
class MyObjectWrapper extends ChangeTracker<UuidValue> {
  @Index()
  final String stringifiedId;

  final Id? isarId;

  const MyObjectWrapper({required this.stringifiedId, required this.isarId});

  @override
  @ignore
  UuidValue get object => UuidValue.fromString(stringifiedId);
}
