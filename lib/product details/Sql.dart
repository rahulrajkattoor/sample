import 'package:sqflite/sqflite.dart'as sql;

class sqlHelper{
  static Future<sql.Database>productdata()async{
    return sql.openDatabase('database',version: 1,
        onCreate:(sql.Database database,int version)async{
         await productdetails(database);
        }

    );
  }
  static Future<void>productdetails(sql.Database database)async{
    await database.execute("""CREATE TABLE product(
     id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
     productname TEXT,
     productprice TEXT,
     productdetails TEXT
    )
    
    """);
  }
}