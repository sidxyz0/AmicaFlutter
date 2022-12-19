import 'package:flutter/material.dart';
import 'package:testapp/Constants.dart';
import 'package:testapp/ServicesCard.dart';
import 'Header.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Wrap(
                        children: [
                          Container(
                            child: Text(
                              "Our Services",
                              textAlign: TextAlign.start,
                              style: Constants.headingTextStyle,
                            ),
                            width: 300,
                          ),
                          ServicesCard(),
                          ServicesCard(),
                          ServicesCard(),
                          ServicesCard()
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      child: Wrap(
                        children: [
                          Container(
                            child: Text(
                              "Top Providers",
                              textAlign: TextAlign.start,
                              style: Constants.headingTextStyle,
                            ),
                            width: 300,
                          ),
                          ServicesCard(),
                          ServicesCard(),
                          ServicesCard(),
                          ServicesCard()
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
