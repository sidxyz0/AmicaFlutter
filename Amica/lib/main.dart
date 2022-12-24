import 'package:flutter/material.dart';
import 'package:testapp/SearchPage.dart';
import 'package:testapp/SplashScreen.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/home': (context) => Home(),
      '/search': (context) => SearchPage(),
    },
  ));
}
