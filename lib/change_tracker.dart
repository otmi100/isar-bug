import 'package:isar_community/isar.dart';

abstract class ChangeTracker<T> {
  @ignore
  T get object;

  const ChangeTracker();
}
