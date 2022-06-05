import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;


class DbHelper{
  static Database ? _db;

  static const String DB_NAME='example.db';
  static const String Table_User='user';
  static const int Version=1;

  static const String User_ID='user_id';
  static const String User_Name='user_name';
  static const String Email='email';
  static const String Password='password';


  Future<Database ?> get db  async {
    if(_db != null)
      {
        return _db;
      }

    _db= await initDB();

    return _db;

  }

initDB() async{

    io.Directory directory= await getApplicationDocumentsDirectory();
    String path= join(directory.path,DB_NAME);
    var db=  await openDatabase(path,version : Version, onCreate: _OnCreate);
    return db;
}

  _OnCreate( Database db, int intVersion) async{
    
    db.execute("CREATE TABLE $Table_User ("
        " $User_ID TEXT,"
        " $User_Name TEXT,"
        " $Email TEXT ,"
        " $Password TEXT ,"
    "PRIMARY KEY ($User_ID)"
        ")");


    }


}


