import 'package:flutter/material.dart';
import 'Constants.dart';

class ServicesCard extends StatefulWidget {
  @override
  _ServicesCard createState() => _ServicesCard();
}

class _ServicesCard extends State<ServicesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Image(
              width: 150,
              height: 150,
              fit: BoxFit.contain,
              image: NetworkImage(
                'https://source.unsplash.com/50x50/?portrait',
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Therapy Session"),
            )
          ],
        ),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
