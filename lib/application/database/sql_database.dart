import 'package:finance_app/core/abstracts/database.dart';
import 'package:finance_app/core/enums/database_entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLDatabase extends LocalDatabase<Database> {
  late final Database _database;

  @override
  Database get database => _database;

  @override
  Future<void> init() async {
    _database = await openDatabase(
      join(
        await getDatabasesPath(),
        'finance_app.db',
      ),
      onCreate: (db, version) {
        return _createTables(db);
      },
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onDowngrade: onDatabaseDowngradeDelete,
      onOpen: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < newVersion) {
          await db.execute('DROP TABLE IF EXISTS user');
          await _createTables(db);
        }
      },
      version: 1,
    );
  }

  Future<void> _createTables(Database db) async {
    await db.execute('''
      CREATE TABLE user (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        photoUrl TEXT
      );
    ''');
  }

  @override
  Future<void> dispose() async {
    await _database.close();
  }

  @override
  Future<void> clear(DatabaseEntity key) async {
    await _database.delete(key.name);
  }

  @override
  Future<void> delete(DatabaseEntity key, String search) async {
    await _database.delete(
      key.name,
      where: 'id = ?',
      whereArgs: [
        search,
      ],
    );
  }

  @override
  Future<Entity> load(DatabaseEntity key, String? search) async {
    List<Map<String, dynamic>>? maps;

    if (search != null) {
      maps = await _database.query(
        key.name,
        where: 'id = ?',
        whereArgs: [
          search,
        ],
      );
    }

    maps ??= await _database.query(key.name);

    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      throw Exception('No data found');
    }
  }

  @override
  Future<void> save(DatabaseEntity key, Entity value) async {
    await _database.insert(
      key.name,
      value,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> update(DatabaseEntity key, String search, Entity value) async {
    await _database.update(
      key.name,
      value,
      where: 'id = ?',
      whereArgs: [
        search,
      ],
    );
  }

  @override
  Future<Entities> loadAll(DatabaseEntity key, [Map<String, dynamic>? query]) async {
    final List<Map<String, dynamic>> maps = await _database.query(
      key.name,
      where: query?.keys.map((e) => '$e = ?').join(' AND '),
      whereArgs: query?.values.toList(),
    );

    if (maps.isNotEmpty) {
      return maps;
    } else {
      throw Exception('No data found');
    }
  }
}
