//@dart= 2.9
import 'package:flutter/material.dart';
import 'package:wcart/pre-login/PreLoginScreen.dart';


Future<void> main() async {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    debugShowCheckedModeBanner: false,
    home: PreLoginScreen(),
  ));
}

