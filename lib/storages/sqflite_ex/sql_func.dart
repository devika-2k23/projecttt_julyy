import 'package:sqflite/sqflite.dart' as sql;

class SQL_Func {
  //create database
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('credentials', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE creds(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       username TEXT,
       password TEXT
      )""");
  }

  static Future<int> SaveCreds(String name, String username, String password) async {
    final db = await SQL_Func.OpenDb();
    final data = {'name': name, 'username':username, 'password': password};
    final id = db.insert('creds', data);
    return id;
  }

// static Future<int> SaveCreds(String name, String username, String password) async {
//   final db = await SQL_Func.db();
//   final data = {'name': name, 'username': username, 'password': password};
//   final id = await db.insert('creds', data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
//   return id;
// }
}