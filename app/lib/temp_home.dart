import 'package:flutter/material.dart';
import 'package:app/nav.dart';

class TempHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homepage.png"))
        ),
      ),
    );
  }
}