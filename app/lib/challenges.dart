import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/challenges.png"))
        ),
      ),
    );
  }
}