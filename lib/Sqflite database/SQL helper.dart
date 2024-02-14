import 'dart:async';

import 'package:sample/Sqflite%20database/sqfl%20helper.dart';
import 'package:sqflite/sqflite.dart' as sql;

class sqlHelper{

  static Future<sql.Database>dataBase1()async{
    return sql.openDatabase('myDataBase',version: 1,
        onCreate: (sql.Database database,int version)async{
          await createTable(database);
        }

    );
  }

  static Future<void> createTable(sql.Database database)async {
    await database.execute("""CREATE TABLE registration(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT
    )""");
  }

  static Future<int>addDatabase(String name,String email,String password)async{
    final db=await sqlHelper.dataBase1();
    final data={'name':name,'email':email,'password':password};
    final id=db.insert('registration',data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }
  static Future<List<Map>>userFound(String Email)async{
    final db=await SQLHelper.mydata();
    final data=await db.rawQuery(
      "SELECT * FROM registration WHERE email='$Email'"
    );
    if(data!.isEmpty){
      return data;
    }
    return data;
  }
}