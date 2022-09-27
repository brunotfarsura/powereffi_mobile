// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appDatabase.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
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

  EnergyConsumptionDao? _energyConsumptionDaoInstance;

  EnergyProfileDao? _energyProfileDaoInstance;

  PersonDataDao? _personalDataDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
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
            'CREATE TABLE IF NOT EXISTS `ENERGY_CONSUMPTION` (`id` INTEGER, `profile_id` INTEGER NOT NULL, `month` INTEGER NOT NULL, `year` INTEGER NOT NULL, `energyConsumption` INTEGER NOT NULL, FOREIGN KEY (`profile_id`) REFERENCES `ENERGY_PROFILE` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ENERGY_PROFILE` (`id` INTEGER, `distributionCompanyName` TEXT NOT NULL, `installationNumber` TEXT NOT NULL, `clientName` TEXT NOT NULL, `address` TEXT NOT NULL, `group` TEXT NOT NULL, `subGroup` TEXT NOT NULL, `classDistribution` TEXT NOT NULL, `subClassDistribution` TEXT NOT NULL, `supplyType` TEXT NOT NULL, `tariffModality` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Person` (`id` INTEGER, `name` TEXT NOT NULL, `email` TEXT NOT NULL, `phoneNumber` TEXT NOT NULL, `documentNumber` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  EnergyConsumptionDao get energyConsumptionDao {
    return _energyConsumptionDaoInstance ??=
        _$EnergyConsumptionDao(database, changeListener);
  }

  @override
  EnergyProfileDao get energyProfileDao {
    return _energyProfileDaoInstance ??=
        _$EnergyProfileDao(database, changeListener);
  }

  @override
  PersonDataDao get personalDataDao {
    return _personalDataDaoInstance ??=
        _$PersonDataDao(database, changeListener);
  }
}

class _$EnergyConsumptionDao extends EnergyConsumptionDao {
  _$EnergyConsumptionDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _energyProfileInsertionAdapter = InsertionAdapter(
            database,
            'ENERGY_PROFILE',
            (EnergyProfile item) => <String, Object?>{
                  'id': item.id,
                  'distributionCompanyName': item.distributionCompanyName,
                  'installationNumber': item.installationNumber,
                  'clientName': item.clientName,
                  'address': item.address,
                  'group': item.group,
                  'subGroup': item.subGroup,
                  'classDistribution': item.classDistribution,
                  'subClassDistribution': item.subClassDistribution,
                  'supplyType': item.supplyType,
                  'tariffModality': item.tariffModality
                }),
        _energyProfileDeletionAdapter = DeletionAdapter(
            database,
            'ENERGY_PROFILE',
            ['id'],
            (EnergyProfile item) => <String, Object?>{
                  'id': item.id,
                  'distributionCompanyName': item.distributionCompanyName,
                  'installationNumber': item.installationNumber,
                  'clientName': item.clientName,
                  'address': item.address,
                  'group': item.group,
                  'subGroup': item.subGroup,
                  'classDistribution': item.classDistribution,
                  'subClassDistribution': item.subClassDistribution,
                  'supplyType': item.supplyType,
                  'tariffModality': item.tariffModality
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EnergyProfile> _energyProfileInsertionAdapter;

  final DeletionAdapter<EnergyProfile> _energyProfileDeletionAdapter;

  @override
  Future<List<EnergyConsumption>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM ENERGY_CONSUMPTION',
        mapper: (Map<String, Object?> row) => EnergyConsumption(
            id: row['id'] as int?,
            profileId: row['profile_id'] as int,
            month: row['month'] as int,
            year: row['year'] as int,
            energyConsumption: row['energyConsumption'] as int));
  }

  @override
  Future<int> insertEnergyProfile(EnergyProfile energy) {
    return _energyProfileInsertionAdapter.insertAndReturnId(
        energy, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteEnergyProfile(EnergyProfile energy) {
    return _energyProfileDeletionAdapter.deleteAndReturnChangedRows(energy);
  }
}

class _$EnergyProfileDao extends EnergyProfileDao {
  _$EnergyProfileDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _energyProfileInsertionAdapter = InsertionAdapter(
            database,
            'ENERGY_PROFILE',
            (EnergyProfile item) => <String, Object?>{
                  'id': item.id,
                  'distributionCompanyName': item.distributionCompanyName,
                  'installationNumber': item.installationNumber,
                  'clientName': item.clientName,
                  'address': item.address,
                  'group': item.group,
                  'subGroup': item.subGroup,
                  'classDistribution': item.classDistribution,
                  'subClassDistribution': item.subClassDistribution,
                  'supplyType': item.supplyType,
                  'tariffModality': item.tariffModality
                }),
        _energyProfileDeletionAdapter = DeletionAdapter(
            database,
            'ENERGY_PROFILE',
            ['id'],
            (EnergyProfile item) => <String, Object?>{
                  'id': item.id,
                  'distributionCompanyName': item.distributionCompanyName,
                  'installationNumber': item.installationNumber,
                  'clientName': item.clientName,
                  'address': item.address,
                  'group': item.group,
                  'subGroup': item.subGroup,
                  'classDistribution': item.classDistribution,
                  'subClassDistribution': item.subClassDistribution,
                  'supplyType': item.supplyType,
                  'tariffModality': item.tariffModality
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EnergyProfile> _energyProfileInsertionAdapter;

  final DeletionAdapter<EnergyProfile> _energyProfileDeletionAdapter;

  @override
  Future<EnergyProfile?> findEnergyProfile(String installationNumber) async {
    return _queryAdapter.query(
        'SELECT * FROM ENERGY_PROFILE where installationNumber = ?1',
        mapper: (Map<String, Object?> row) => EnergyProfile(
            id: row['id'] as int?,
            distributionCompanyName: row['distributionCompanyName'] as String,
            installationNumber: row['installationNumber'] as String,
            clientName: row['clientName'] as String,
            address: row['address'] as String,
            group: row['group'] as String,
            subGroup: row['subGroup'] as String,
            classDistribution: row['classDistribution'] as String,
            subClassDistribution: row['subClassDistribution'] as String,
            supplyType: row['supplyType'] as String,
            tariffModality: row['tariffModality'] as String),
        arguments: [installationNumber]);
  }

  @override
  Future<int> insertEnergyProfile(EnergyProfile energy) {
    return _energyProfileInsertionAdapter.insertAndReturnId(
        energy, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteEnergyProfile(EnergyProfile energy) {
    return _energyProfileDeletionAdapter.deleteAndReturnChangedRows(energy);
  }
}

class _$PersonDataDao extends PersonDataDao {
  _$PersonDataDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _personInsertionAdapter = InsertionAdapter(
            database,
            'Person',
            (Person item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'phoneNumber': item.phoneNumber,
                  'documentNumber': item.documentNumber
                }),
        _personDeletionAdapter = DeletionAdapter(
            database,
            'Person',
            ['id'],
            (Person item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'email': item.email,
                  'phoneNumber': item.phoneNumber,
                  'documentNumber': item.documentNumber
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Person> _personInsertionAdapter;

  final DeletionAdapter<Person> _personDeletionAdapter;

  @override
  Future<List<Person>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM Person',
        mapper: (Map<String, Object?> row) => Person(
            id: row['id'] as int?,
            name: row['name'] as String,
            email: row['email'] as String,
            phoneNumber: row['phoneNumber'] as String,
            documentNumber: row['documentNumber'] as String));
  }

  @override
  Future<int> insertPerson(Person person) {
    return _personInsertionAdapter.insertAndReturnId(
        person, OnConflictStrategy.abort);
  }

  @override
  Future<int> deletePerson(Person person) {
    return _personDeletionAdapter.deleteAndReturnChangedRows(person);
  }
}
