import 'package:flutter/material.dart';
import 'package:testapp/HeaderTop.dart';
import 'package:testapp/SearchBar.dart';

class Header extends StatefulWidget {
  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [HeaderTop(), SearchBar()],
    );
  }
}
