import 'package:todo_app/db/db.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDb extends IDatabase {
  static const _dbName = "todo_db.db";
  static const _dbVersion = 1;
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }

    _db = await _init();
    return _db!;
  }

  Future<Database> _init() async {
    final dbPath = await getDatabasesPath();
    final joinPath = join(dbPath, _dbName);

    return openDatabase(
      joinPath,
      version: _dbVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE projects(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              nome VARCHAR(50),
              status INTEGER)
          ''');

    await db.execute('''
          CREATE TABLE todos(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            fk_projectId INT
          )
          ''');
  }
}
