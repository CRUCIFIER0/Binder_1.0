import 'package:flutter/material.dart';
import 'package:tmapp/LoginFiles/LoginMain.dart';
import 'package:tmapp/MainFiles/myComplaints/myComplaintMain.dart';
import 'LoginFiles/LoginMain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myComplaints(),
    );
  }
}

