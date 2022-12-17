import 'dart:async';

import 'package:flutter/material.dart';
import 'Constants.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  Timer timer = new Timer(Duration(seconds: 2), () => print(""));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            onChanged: (searchStr) => this.searchFn(searchStr),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.only(top: 10, right: 0, bottom: 10, left: 0),
              hintText: "Find your Amica...",
              hintStyle: TextStyle(
                  fontSize: Constants.appMainFontSize, letterSpacing: 1),
              prefixIcon: Container(
                  child: Icon(Icons.search_outlined,
                      color: Constants.appMainColor, size: 25),
                  padding: EdgeInsets.only(left: 10)),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 40, maxWidth: 40),
              suffixIcon: Container(
                  child:
                      Icon(Icons.mic, color: Constants.appMainColor, size: 25),
                  padding: EdgeInsets.only(right: 10)),
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 40, maxWidth: 40),
              border: InputBorder.none,
            ),
            cursorColor: Constants.appMainColor,
          ),
          margin: EdgeInsets.only(top: 0, right: 20, bottom: 20, left: 20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Constants.appGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        )
      ],
    );
  }

  void searchFn(String str) {
    this.timer.cancel();
    this.timer = Timer(Duration(seconds: 2), () => print(str));
  }
}
