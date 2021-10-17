import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  // final icon = CupertinoIcons.moon_stars;

  return AppBar(
    title: Text("Profile",
    style: TextStyle(color: Colors.white),
    ),
    shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
    leading: BackButton(
    color: Colors.white
    ),
    backgroundColor: Colors.blue.shade300,
    elevation: 0,
    
    // actions: [
    //   IconButton(
    //     icon: Icon(Icons.person),
    //     onPressed: () {},
    //   ),
    // ],
  );
}