import 'dart:io';

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:app/model/user.dart';
import 'package:app/utils/user_preferences.dart';
import 'package:app/widget/appbar_widget.dart';
import 'package:app/widget/button_widget.dart';
import 'package:app/widget/profile_widget.dart';
import 'package:app/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
  // => ThemeSwitchingArea(
  //       child: Builder(
  //         builder: (context) 
          
            appBar: AppBar(
              title: Text("Edit Profile"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              backgroundColor: Colors.blue.shade300
            ),

            body: ListView(
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                // profilewidget displays the image
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                Center(child: buildUpgradeButton()),
                //const SizedBox(height: 24),
                // TextFieldWidget(
                //   label: 'About',
                //   text: user.about,
                //   maxLines: 5,
                //   onChanged: (about) {},
                // ),
              ],
            ),
          );

  Widget buildUpgradeButton() => ButtonWidget(
    text: 'Log in',
    onClicked: () {},
    );
}


class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    
    return path;
 }

  @override
    bool shouldReclip(CustomClipper oldClipper) {
    return true;
 }
}