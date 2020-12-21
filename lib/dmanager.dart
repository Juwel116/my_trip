/*import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbUsers {
  Database _database;

  Future openDb() async {
    if (_database == null) {
      _database = await openDatabase(
          join(await getDatabasesPath(), "busbooking.db"),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE userdetails(id INTEGER PRIMARY KEY autoincrement, name TEXT, emailid NVARCHAR(320), phonenumber INTEGER, password NVARCHAR(320))",
        );
      });
    }
  }

  Future<int> insertuserdetails(BusBooking userdetails) async {
    await openDb();
    return await _database.insert('userdetails', userdetails.toMap());
  }

  /*Future<List<BusBooking>> getuserdetailsList() async {
      await openDb();
      final List<Map<String, dynamic>> maps = await _database.query('user');
      return List.generate(maps.length, (i) {
        return BusBooking(
            id: maps[i]['id'],
            name: maps[i]['name'],
            emailid: maps[i]['emailid'],
            phonenumber: maps[i]['phonenumber'],
            password: maps[i]['password']);
      });
    }*/

  /*Future<int> updateUser_Details(BusBooking user) async {
      await openDb();
      return await _database.update('user_details', user.toMap(),
          where: "id = ?", whereArgs: [user.id]);
    }

    Future<void> deleteUser(int id) async {
      await openDb();
      await _database.delete('userdetail', where: "id = ?", whereArgs: [id]);
    }*/
}

//insertuserdetails(BusBooking st) {}

class BusBooking {
  int id;
  String name;
  String phonenumber;
  String emailid;
  String password;
  BusBooking(
      {this.id,
      @required this.name,
      @required this.phonenumber,
      @required this.emailid,
      @required this.password});
  Map<String, dynamic> toMap() {
    return {'name': name};
  }
}
*/
