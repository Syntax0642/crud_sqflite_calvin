import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const String _dbPath = "notes_db.db";
  static late String _dbDir;
  static Database? _db;

  static Future<void> init() async {
    _dbDir = await getDatabasesPath();
    _db = await openDatabase("$_dbDir/$_dbPath",
        onCreate: (Database db, int version) async {
          await db.execute("""
        CREATE TABLE Notes (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          content TEXT 
        );
""");
        }, version: 1);
  }

  static Database getDb() {
    if (_db == null) {
      throw Error();
    }

    return _db!;
  }
}