import 'package:acm_app_demo/login.dart';
import 'package:acm_app_demo/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: 'login',
    routes: {
      'login': (context) => Login(),
      'register': (context) => Register()
    },
  ));
}
