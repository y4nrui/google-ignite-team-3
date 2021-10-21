import 'dart:ui';
import 'package:flutter/material.dart';
import 'line_chart_page.dart';
import 'package:app/challenges.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber[500],
          height: 60,
          child: const Center(
            child: Text(
                '3 DAYS CHALLENGE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => Challenges(),
                      fullscreenDialog: true),
                );
              },
          child: Container(
            height: 50,
            child: const Center(
              child: Text(
                'see more challenges',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/curr_streak.png'),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Center(
                child: Text(
                  'Current Streak',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/best_streak.png'),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Center(
                child: Text(
                  'Best Streak',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/total_days_donated.png'),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Center(
                child: Text(
                  'Total Days Donated',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              height: 60,
              child: Text(
                "Track how frequent you donate",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: LineChartPage(),
        )
      ],
    );
  }
}