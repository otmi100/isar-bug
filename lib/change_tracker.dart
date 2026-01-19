import 'package:isar_community/isar.dart';

enum DataState {
  created,
  deleted,
  updated,
  unchanged,
  online,
  conflict,
  offlineOnly,
  unknown,
  archived, // only [LocalFileMetadata] uses this
  rehydrating, // only [LocalFileMetadata] uses this
}

abstract class ChangeTracker<Tid> {
  @ignore
  Tid get id;

  /// this is last updated by client
  @Index()
  final DateTime? lastUpdated;

  /// attribute is exclusively set by the server
  @Index()
  final DateTime? lastModified;

  final DateTime? createdAt;

  final bool isDeleted;

  @Index()
  @Enumerated(EnumType.name)
  final DataState? dataState;

  const ChangeTracker({
    required this.dataState,
    this.lastUpdated,
    this.isDeleted = false,
    this.lastModified,
    this.createdAt,
  });
}
