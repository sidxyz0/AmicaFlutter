import 'dart:async';

import 'package:flutter/material.dart';
import 'Constants.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  //UI Starts
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: this.searchText,
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
                  child: IconButton(
                      icon: Icon(this.searchIcon,
                          color: Constants.appMainColor, size: 25),
                          onPressed: ()=> this.removeSearchResults(),),
                  padding: EdgeInsets.only(left: 5)),
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
  // UI Ends

  TextEditingController searchText = new TextEditingController(text: '');
  Timer timer = new Timer(Duration(seconds: 2), () => print(""));
  IconData searchIcon = Icons.search_outlined;

  void searchFn(String str) {
    setState(() {
      if (str != '') {
        this.searchIcon = Icons.arrow_back_ios_new;
      } else {
        this.searchIcon = Icons.search_outlined;
      }
    });
    this.timer.cancel();
    this.timer = Timer(Duration(seconds: 2), () => print(str));
  }

  removeSearchResults(){
    if(this.searchText.text!=''){
      this.searchText.text = '';
      setState(() {
        this.searchIcon = Icons.search_outlined;
      });
    }
  }
}
