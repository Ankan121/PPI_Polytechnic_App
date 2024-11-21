import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ppi/constants/color.dart';
import 'package:sqflite/sqflite.dart';



class DbHelper{
  Database? _database;

  Future<Database?> get database async{
    if(_database != null){
      return _database;
    }

    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "mydatabase.db");
    _database =
    await openDatabase(path, version: 3, onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE profile (id INTEGER PRIMARY KEY, img TEXT, name TEXT, roll TEXT, birthday TEXT, department TEXT, semester TEXT, registration TEXT, email TEXT, date TEXT)');
    });
    return _database;
  }

  // insertData() async {
  //   Database? db = await database;
  //   db?.insert("MyProfile", {
  //     "name": "Flutter demo",
  //     "age": 22,
  //     "address": "dhaka 1207",
  //     "num": 12.5,
  //   });
  // }


  Future<void> addnote(context, String? img, String? name, String? roll, String? birthday, String? department, String? semester, String? registration, String? email) async {

    //item insert/add
    Database? db = await database;
    final now = DateTime.now();
    // final now = DateTime.now();
    db?.insert("profile", {
      "img": img,
      "name": name,
      "roll": roll,
      "birthday": birthday,
      "department": department,
      "semester": semester,
      "registration": registration,
      "email": email,
      "date": '$now',
    });
    Get.snackbar("Save", " Successfully");
  }

  //database all data read
  Future<dynamic> readItems()async{
    Database? db = await database;
    final list = db?.query('profile');
    return list;
  }

  //database all data update
  Future<dynamic> updateItems()async{
    Database? db = await database;
    final list = db?.update('profile', {"img": "New Img", "name": "New Name", "roll": "New Name", "Roll": "New Name", "birthday": "New Birthday", "semester": "New Semester", "registration": "New Registration", "email": "New Email"});
    return list;
  }

  //database data delete index by index in id
  Future<dynamic> deleteItems(int? id, context)async{
    Database? db = await database;
    await db?.delete('profile',where: 'id = ?',whereArgs: [id]);
    var snackBar = const SnackBar(content: Text('Data deleted successfully'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // data/text/note user update
  Future<dynamic> noteupdate(int? id, Map<String, dynamic> data, context)async{
    Database? db = await database;
    await db?.update('profile', data, where: 'id = ?', whereArgs: [id]);
  }

}