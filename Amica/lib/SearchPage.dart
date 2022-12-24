import 'package:flutter/material.dart';
import 'package:testapp/SearchBar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(child: SearchBar(),margin: EdgeInsets.only(top: 20),)),
    );
  }
}
