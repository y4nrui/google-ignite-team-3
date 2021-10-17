import 'package:flutter/material.dart';
import 'package:thedashboard/body.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}