
import 'package:flutter/material.dart';
import 'package:orientaltattoo/Pages/login_pages.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'orientalltatto.io',
      theme: ThemeData(scaffoldBackgroundColor:  Color(0xFFF0DBC8)),
      home: LoginPages(), 
    );
  }
}