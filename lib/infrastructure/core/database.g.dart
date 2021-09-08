// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PlantDtoDao? _plantDaoInstance;

  PlantTypeDtoDao? _plantTypeDtoDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PlantDto` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `typeId` TEXT NOT NULL, `dateTime` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PlantTypeDto` (`name` TEXT NOT NULL, PRIMARY KEY (`name`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PlantDtoDao get plantDao {
    return _plantDaoInstance ??= _$PlantDtoDao(database, changeListener);
  }

  @override
  PlantTypeDtoDao get plantTypeDtoDao {
    return _plantTypeDtoDaoInstance ??=
        _$PlantTypeDtoDao(database, changeListener);
  }
}

class _$PlantDtoDao extends PlantDtoDao {
  _$PlantDtoDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _plantDtoInsertionAdapter = InsertionAdapter(
            database,
            'PlantDto',
            (PlantDto item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'typeId': item.typeId,
                  'dateTime': item.dateTime
                }),
        _plantDtoUpdateAdapter = UpdateAdapter(
            database,
            'PlantDto',
            ['id'],
            (PlantDto item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'typeId': item.typeId,
                  'dateTime': item.dateTime
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PlantDto> _plantDtoInsertionAdapter;

  final UpdateAdapter<PlantDto> _plantDtoUpdateAdapter;

  @override
  Future<List<PlantDto>> findAllPlantDto() async {
    return _queryAdapter.queryList('SELECT * FROM PlantDto',
        mapper: (Map<String, Object?> row) => PlantDto(
            name: row['name'] as String,
            id: row['id'] as String,
            dateTime: row['dateTime'] as int,
            typeId: row['typeId'] as String));
  }

  @override
  Future<List<PlantDto>> getPlantDto(int from, int take) async {
    return _queryAdapter.queryList(
        'SELECT * FROM PlantDto ORDER BY id LIMIt ?2 OFFSET ?1',
        mapper: (Map<String, Object?> row) => PlantDto(
            name: row['name'] as String,
            id: row['id'] as String,
            dateTime: row['dateTime'] as int,
            typeId: row['typeId'] as String),
        arguments: [from, take]);
  }

  @override
  Future<List<PlantDto>> getPlantDtoSearch(
      String nameSearch, int from, int take) async {
    return _queryAdapter.queryList(
        'SELECT * FROM PlantDto where name like ?1 ORDER BY id LIMIt ?3 OFFSET ?2',
        mapper: (Map<String, Object?> row) => PlantDto(name: row['name'] as String, id: row['id'] as String, dateTime: row['dateTime'] as int, typeId: row['typeId'] as String),
        arguments: [nameSearch, from, take]);
  }

  @override
  Future<void> insertPlantDto(PlantDto plantDto) async {
    await _plantDtoInsertionAdapter.insert(plantDto, OnConflictStrategy.abort);
  }

  @override
  Future<void> updatePlantDto(PlantDto plantDto) async {
    await _plantDtoUpdateAdapter.update(plantDto, OnConflictStrategy.abort);
  }
}

class _$PlantTypeDtoDao extends PlantTypeDtoDao {
  _$PlantTypeDtoDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _plantTypeDtoInsertionAdapter = InsertionAdapter(
            database,
            'PlantTypeDto',
            (PlantTypeDto item) => <String, Object?>{'name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PlantTypeDto> _plantTypeDtoInsertionAdapter;

  @override
  Future<List<PlantTypeDto>> findAllPlantType() async {
    return _queryAdapter.queryList('SELECT * FROM PlantTypeDto',
        mapper: (Map<String, Object?> row) =>
            PlantTypeDto(row['name'] as String));
  }

  @override
  Stream<PlantTypeDto?> findPlantTypeById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM PlantTypeDto WHERE id = ?1',
        mapper: (Map<String, Object?> row) =>
            PlantTypeDto(row['name'] as String),
        arguments: [id],
        queryableName: 'PlantTypeDto',
        isView: false);
  }

  @override
  Future<void> insertPlantType(PlantTypeDto plantType) async {
    await _plantTypeDtoInsertionAdapter.insert(
        plantType, OnConflictStrategy.abort);
  }
}
