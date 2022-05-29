// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retaurant/Views/LoginForm.dart';
import 'package:retaurant/Views/OnBorad1.dart';
import 'package:retaurant/Views/RegisterForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moufed Restaurant',

      home: OnBoard1(),
      routes: {
        '/Login' :(c)=> LoginForm(),
        '/Register' :(c)=> RegisterForm()
      },
    );
  }
}



