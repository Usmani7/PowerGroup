import 'package:flutter/material.dart';
import 'home.dart';
import './login.dart';
import './testdb.dart';
import './signup.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:sqflite/sqflite.dart';
void main() async{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fitman',
      home: Login(),
    )
  );
}
