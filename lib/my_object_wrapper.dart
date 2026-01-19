import 'package:isar_analyzer/change_tracker.dart';
import 'package:isar_community/isar.dart';
import 'package:uuid/uuid.dart';

part 'my_object_wrapper.g.dart';

@collection
class MyObjectWrapper extends ChangeTracker<UuidValue> {
  @Index()
  final String stringifiedId;

  final Id? isarId;

  const MyObjectWrapper({required this.stringifiedId, required this.isarId});

  @override
  @ignore
  String get object => stringifiedId;
}
