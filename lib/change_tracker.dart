import 'package:isar_community/isar.dart';

abstract class ChangeTracker<T> {
  @ignore
  String get object;

  const ChangeTracker();
}
