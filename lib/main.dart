
import 'package:flutter/material.dart';
import 'package:login_ui/Register.dart';
import 'package:login_ui/login.dart';

void main()
{

  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My name is Ahmad jilani",

      home:login(),
      routes: {
        'register':(context)=>Register()

    }

    );
  }}













