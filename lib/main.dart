import 'package:flutter/material.dart';
import 'package:flutter_app_msu2/views/splash_screen_ui.dart';

void main(List<String> args) {
  runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SplashScreenUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}
