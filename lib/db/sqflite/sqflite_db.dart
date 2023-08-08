import 'package:todo_app/db/db.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Sqflite extends IDatabase {
  @override
  void init() async {
    openDatabase(join(await getDatabasesPath(), 'todo_db.db'),
        onCreate: await onCreate
    );
  }

  Future onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE projects(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              status INTEGER)
          '''
    );

    await db.execute('''
          CREATE TABLE todos(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            fk_projectId INT,
            FOREIGN KEY(fk_projectId) REFERENCES (id)
          )
          '''
    );
  }

}
