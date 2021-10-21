import 'package:flutter/material.dart';

class HomepageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepageWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 10,
              left: 4,
              child: Container(
                  width: 366,
                  height: 790,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Image1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
        ]));
  }
}
