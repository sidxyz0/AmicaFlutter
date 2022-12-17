import 'package:flutter/material.dart';
import 'Header.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Header(),
        Text("ABC")
      ],),
    );
  }
}
