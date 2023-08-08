import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/db/sqflite/sqflite_db.dart';

class SqfliteProvider extends ChangeNotifier {
  Future<Database?> get _db async => await SqfliteDb().db;

  void manualInsertionDb() async {
    Database? db = await _db;
    Map<String, Object?> obj = {
      "nome": "Manual One",
      "status": 0,
    };
    db!.insert('projects', obj);

    final query = await db.query('projects');

    print(query);
  }
}
