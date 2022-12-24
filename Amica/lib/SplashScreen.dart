import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/Constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    this.goToHomeScreen(context);
    return Container(
      child: Center(
        child: Text("AMICA", style: Constants.SplashScreenMainTextStyle),
      ),
      color: Constants.appMainColor,
    );
  }

  goToHomeScreen(context){
    Timer(Duration(seconds: 3), () => {
    Navigator.pushReplacementNamed(context, '/home')
  });
  }
}
