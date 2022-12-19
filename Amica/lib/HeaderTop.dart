import 'package:flutter/material.dart';
import 'Constants.dart';

class HeaderTop extends StatefulWidget {
  @override
  _HeaderTop createState() => _HeaderTop();
}

class _HeaderTop extends State<HeaderTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Container(
        child: Icon(
          Icons.location_on,
          color: Constants.appMainColor,
        ),
        margin: EdgeInsets.only(left: 15),
      ),
      leadingWidth: 45,
      titleSpacing: 0,
      title: Column(
        children: [
          Container(
            child: Text(
              'Home',
              style: Constants.headingTextStyle,
            ),
            width: 200,
          ),
          Container(
            child: Text(
              'Sec 12, Noida',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Constants.appMainSmallFontSize),
            ),
            width: 200,
          )
        ],
      ),
      actions: [
        Container(
          child: TextButton(
            onPressed: () {},
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                'https://source.unsplash.com/50x50/?portrait',
              ),
            ),
          ),
          padding: EdgeInsets.only(top: 0, right: 5, bottom: 0, left: 0),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
