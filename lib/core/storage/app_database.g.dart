// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $EventsTable extends Events with TableInfo<$EventsTable, Event> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadJsonMeta = const VerificationMeta(
    'payloadJson',
  );
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
    'payload_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, type, payloadJson, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(
    Insertable<Event> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('payload_json')) {
      context.handle(
        _payloadJsonMeta,
        payloadJson.isAcceptableOrUnknown(
          data['payload_json']!,
          _payloadJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Event(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      payloadJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload_json'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class Event extends DataClass implements Insertable<Event> {
  final int id;
  final String type;
  final String payloadJson;
  final DateTime createdAt;
  const Event({
    required this.id,
    required this.type,
    required this.payloadJson,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['payload_json'] = Variable<String>(payloadJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      type: Value(type),
      payloadJson: Value(payloadJson),
      createdAt: Value(createdAt),
    );
  }

  factory Event.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Event copyWith({
    int? id,
    String? type,
    String? payloadJson,
    DateTime? createdAt,
  }) => Event(
    id: id ?? this.id,
    type: type ?? this.type,
    payloadJson: payloadJson ?? this.payloadJson,
    createdAt: createdAt ?? this.createdAt,
  );
  Event copyWithCompanion(EventsCompanion data) {
    return Event(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      payloadJson: data.payloadJson.present
          ? data.payloadJson.value
          : this.payloadJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, payloadJson, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.type == this.type &&
          other.payloadJson == this.payloadJson &&
          other.createdAt == this.createdAt);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> payloadJson;
  final Value<DateTime> createdAt;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  EventsCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String payloadJson,
    this.createdAt = const Value.absent(),
  }) : type = Value(type),
       payloadJson = Value(payloadJson);
  static Insertable<Event> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? payloadJson,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  EventsCompanion copyWith({
    Value<int>? id,
    Value<String>? type,
    Value<String>? payloadJson,
    Value<DateTime>? createdAt,
  }) {
    return EventsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      payloadJson: payloadJson ?? this.payloadJson,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ExposuresTable extends Exposures
    with TableInfo<$ExposuresTable, Exposure> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExposuresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _skillMeta = const VerificationMeta('skill');
  @override
  late final GeneratedColumn<String> skill = GeneratedColumn<String>(
    'skill',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastServedAtMeta = const VerificationMeta(
    'lastServedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastServedAt = GeneratedColumn<DateTime>(
    'last_served_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [itemId, skill, lastServedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exposures';
  @override
  VerificationContext validateIntegrity(
    Insertable<Exposure> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('skill')) {
      context.handle(
        _skillMeta,
        skill.isAcceptableOrUnknown(data['skill']!, _skillMeta),
      );
    } else if (isInserting) {
      context.missing(_skillMeta);
    }
    if (data.containsKey('last_served_at')) {
      context.handle(
        _lastServedAtMeta,
        lastServedAt.isAcceptableOrUnknown(
          data['last_served_at']!,
          _lastServedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastServedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  Exposure map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exposure(
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      skill: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}skill'],
      )!,
      lastServedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_served_at'],
      )!,
    );
  }

  @override
  $ExposuresTable createAlias(String alias) {
    return $ExposuresTable(attachedDatabase, alias);
  }
}

class Exposure extends DataClass implements Insertable<Exposure> {
  final String itemId;
  final String skill;
  final DateTime lastServedAt;
  const Exposure({
    required this.itemId,
    required this.skill,
    required this.lastServedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_id'] = Variable<String>(itemId);
    map['skill'] = Variable<String>(skill);
    map['last_served_at'] = Variable<DateTime>(lastServedAt);
    return map;
  }

  ExposuresCompanion toCompanion(bool nullToAbsent) {
    return ExposuresCompanion(
      itemId: Value(itemId),
      skill: Value(skill),
      lastServedAt: Value(lastServedAt),
    );
  }

  factory Exposure.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exposure(
      itemId: serializer.fromJson<String>(json['itemId']),
      skill: serializer.fromJson<String>(json['skill']),
      lastServedAt: serializer.fromJson<DateTime>(json['lastServedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemId': serializer.toJson<String>(itemId),
      'skill': serializer.toJson<String>(skill),
      'lastServedAt': serializer.toJson<DateTime>(lastServedAt),
    };
  }

  Exposure copyWith({String? itemId, String? skill, DateTime? lastServedAt}) =>
      Exposure(
        itemId: itemId ?? this.itemId,
        skill: skill ?? this.skill,
        lastServedAt: lastServedAt ?? this.lastServedAt,
      );
  Exposure copyWithCompanion(ExposuresCompanion data) {
    return Exposure(
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      skill: data.skill.present ? data.skill.value : this.skill,
      lastServedAt: data.lastServedAt.present
          ? data.lastServedAt.value
          : this.lastServedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Exposure(')
          ..write('itemId: $itemId, ')
          ..write('skill: $skill, ')
          ..write('lastServedAt: $lastServedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(itemId, skill, lastServedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exposure &&
          other.itemId == this.itemId &&
          other.skill == this.skill &&
          other.lastServedAt == this.lastServedAt);
}

class ExposuresCompanion extends UpdateCompanion<Exposure> {
  final Value<String> itemId;
  final Value<String> skill;
  final Value<DateTime> lastServedAt;
  final Value<int> rowid;
  const ExposuresCompanion({
    this.itemId = const Value.absent(),
    this.skill = const Value.absent(),
    this.lastServedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExposuresCompanion.insert({
    required String itemId,
    required String skill,
    required DateTime lastServedAt,
    this.rowid = const Value.absent(),
  }) : itemId = Value(itemId),
       skill = Value(skill),
       lastServedAt = Value(lastServedAt);
  static Insertable<Exposure> custom({
    Expression<String>? itemId,
    Expression<String>? skill,
    Expression<DateTime>? lastServedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemId != null) 'item_id': itemId,
      if (skill != null) 'skill': skill,
      if (lastServedAt != null) 'last_served_at': lastServedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExposuresCompanion copyWith({
    Value<String>? itemId,
    Value<String>? skill,
    Value<DateTime>? lastServedAt,
    Value<int>? rowid,
  }) {
    return ExposuresCompanion(
      itemId: itemId ?? this.itemId,
      skill: skill ?? this.skill,
      lastServedAt: lastServedAt ?? this.lastServedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (skill.present) {
      map['skill'] = Variable<String>(skill.value);
    }
    if (lastServedAt.present) {
      map['last_served_at'] = Variable<DateTime>(lastServedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExposuresCompanion(')
          ..write('itemId: $itemId, ')
          ..write('skill: $skill, ')
          ..write('lastServedAt: $lastServedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EventsTable events = $EventsTable(this);
  late final $ExposuresTable exposures = $ExposuresTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [events, exposures];
}

typedef $$EventsTableCreateCompanionBuilder =
    EventsCompanion Function({
      Value<int> id,
      required String type,
      required String payloadJson,
      Value<DateTime> createdAt,
    });
typedef $$EventsTableUpdateCompanionBuilder =
    EventsCompanion Function({
      Value<int> id,
      Value<String> type,
      Value<String> payloadJson,
      Value<DateTime> createdAt,
    });

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$EventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventsTable,
          Event,
          $$EventsTableFilterComposer,
          $$EventsTableOrderingComposer,
          $$EventsTableAnnotationComposer,
          $$EventsTableCreateCompanionBuilder,
          $$EventsTableUpdateCompanionBuilder,
          (Event, BaseReferences<_$AppDatabase, $EventsTable, Event>),
          Event,
          PrefetchHooks Function()
        > {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> payloadJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => EventsCompanion(
                id: id,
                type: type,
                payloadJson: payloadJson,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String type,
                required String payloadJson,
                Value<DateTime> createdAt = const Value.absent(),
              }) => EventsCompanion.insert(
                id: id,
                type: type,
                payloadJson: payloadJson,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$EventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventsTable,
      Event,
      $$EventsTableFilterComposer,
      $$EventsTableOrderingComposer,
      $$EventsTableAnnotationComposer,
      $$EventsTableCreateCompanionBuilder,
      $$EventsTableUpdateCompanionBuilder,
      (Event, BaseReferences<_$AppDatabase, $EventsTable, Event>),
      Event,
      PrefetchHooks Function()
    >;
typedef $$ExposuresTableCreateCompanionBuilder =
    ExposuresCompanion Function({
      required String itemId,
      required String skill,
      required DateTime lastServedAt,
      Value<int> rowid,
    });
typedef $$ExposuresTableUpdateCompanionBuilder =
    ExposuresCompanion Function({
      Value<String> itemId,
      Value<String> skill,
      Value<DateTime> lastServedAt,
      Value<int> rowid,
    });

class $$ExposuresTableFilterComposer
    extends Composer<_$AppDatabase, $ExposuresTable> {
  $$ExposuresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get skill => $composableBuilder(
    column: $table.skill,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastServedAt => $composableBuilder(
    column: $table.lastServedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExposuresTableOrderingComposer
    extends Composer<_$AppDatabase, $ExposuresTable> {
  $$ExposuresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get skill => $composableBuilder(
    column: $table.skill,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastServedAt => $composableBuilder(
    column: $table.lastServedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExposuresTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExposuresTable> {
  $$ExposuresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get skill =>
      $composableBuilder(column: $table.skill, builder: (column) => column);

  GeneratedColumn<DateTime> get lastServedAt => $composableBuilder(
    column: $table.lastServedAt,
    builder: (column) => column,
  );
}

class $$ExposuresTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExposuresTable,
          Exposure,
          $$ExposuresTableFilterComposer,
          $$ExposuresTableOrderingComposer,
          $$ExposuresTableAnnotationComposer,
          $$ExposuresTableCreateCompanionBuilder,
          $$ExposuresTableUpdateCompanionBuilder,
          (Exposure, BaseReferences<_$AppDatabase, $ExposuresTable, Exposure>),
          Exposure,
          PrefetchHooks Function()
        > {
  $$ExposuresTableTableManager(_$AppDatabase db, $ExposuresTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExposuresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExposuresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExposuresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> itemId = const Value.absent(),
                Value<String> skill = const Value.absent(),
                Value<DateTime> lastServedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExposuresCompanion(
                itemId: itemId,
                skill: skill,
                lastServedAt: lastServedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String itemId,
                required String skill,
                required DateTime lastServedAt,
                Value<int> rowid = const Value.absent(),
              }) => ExposuresCompanion.insert(
                itemId: itemId,
                skill: skill,
                lastServedAt: lastServedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExposuresTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExposuresTable,
      Exposure,
      $$ExposuresTableFilterComposer,
      $$ExposuresTableOrderingComposer,
      $$ExposuresTableAnnotationComposer,
      $$ExposuresTableCreateCompanionBuilder,
      $$ExposuresTableUpdateCompanionBuilder,
      (Exposure, BaseReferences<_$AppDatabase, $ExposuresTable, Exposure>),
      Exposure,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$ExposuresTableTableManager get exposures =>
      $$ExposuresTableTableManager(_db, _db.exposures);
}
