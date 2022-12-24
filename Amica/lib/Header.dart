import 'package:flutter/material.dart';
import 'package:testapp/Constants.dart';
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
      children: [
        HeaderTop(),
        Container(
          child: SizedBox(
            height: 38,
            child: TextButton(
                onPressed: () => this.goToSearchPage(context),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.search,
                          color: Constants.appMainColor, size: 25),
                    ),
                    Expanded(
                        flex: 9,
                        child: Text(
                          "Find your Amica...",
                          style: TextStyle(
                            fontSize: Constants.appMainFontSize,
                            letterSpacing: 1,
                            color: Constants.appMainDarkGreyText,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.mic,
                          color: Constants.appMainColor, size: 25),
                    )
                  ],
                )),
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

  goToSearchPage(context) {
    Navigator.pushNamed(context, '/search');
  }
}
