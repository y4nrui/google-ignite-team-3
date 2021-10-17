import 'package:flutter/material.dart';
import '../generatediphone11prox1widget/GeneratedIPhone11ProX1Widget.dart';

void main() {
  runApp(HomepageApp());
}

class HomepageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedIPhone11ProX1Widget',
      routes: {
        '/GeneratedIPhone11ProX1Widget': (context) =>
            GeneratedIPhone11ProX1Widget(),
      },
    );
  }
}
