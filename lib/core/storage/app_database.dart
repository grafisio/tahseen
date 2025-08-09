import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class Events extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get payloadJson => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class Exposures extends Table {
  TextColumn get itemId => text()();
  TextColumn get skill => text()();
  DateTimeColumn get lastServedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {itemId};
}

@DriftDatabase(tables: [Events, Exposures])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> insertEvent(String type, String payloadJson) => into(events).insert(EventsCompanion.insert(type: type, payloadJson: payloadJson));

  Future<void> upsertExposure({required String itemId, required String skill, required DateTime when}) async {
    await into(exposures).insertOnConflictUpdate(ExposuresCompanion(itemId: Value(itemId), skill: Value(skill), lastServedAt: Value(when)));
  }

  Future<List<Exposure>> recentExposures({required DateTime notBefore}) {
    return (select(exposures)..where((e) => e.lastServedAt.isBiggerOrEqualValue(notBefore))).get();
  }

  Future<int> purgeOldExposures({required DateTime olderThan}) {
    return (delete(exposures)..where((e) => e.lastServedAt.isSmallerThanValue(olderThan))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'tahseen.db'));
    return NativeDatabase.createInBackground(file);
  });
}


