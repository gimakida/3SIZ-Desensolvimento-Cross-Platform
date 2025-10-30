import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseService {
  Future<Database> get _db async {
  return openDatabase(
  join(await getDatabasesPath(), 'explorer_database.db'),
  version: 1,
  onCreate: (db, version) {
  return db. execute('''
  CREATE TABLE explorers(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER
  )
  ''');

   },
  );
  }
}