import 'dart:io';

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';
import 'package:app/model/user.dart';
import 'package:app/utils/user_preferences.dart';
import 'package:app/widget/appbar_widget.dart';
import 'package:app/widget/button_widget.dart';
import 'package:app/widget/profile_widget.dart';
import 'package:app/widget/textfield_widget.dart';
import 'package:settings_ui/settings_ui.dart';

class PaymentDetailsPage extends StatefulWidget {
  @override
  _PaymentDetailsPageState createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
  // => ThemeSwitchingArea(
  //       child: Builder(
  //         builder: (context) 
          
            appBar: AppBar(
              title: Text("Linked Payment methods"),
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
                // ProfileWidget(
                //   imagePath: user.imagePath,
                //   isEdit: true,
                //   onClicked: () async {},
                // ),
                // profilewidget displays the image
                
                const SizedBox(height: 24),
                Text("Payment methods",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,) 
                // color: Colors.grey.shade800),
                ),
                

                SettingsList(
        sections: [
          SettingsSection(
            title: 'Section',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
            
              // SettingsTile.switchTile(
              //   title: 'Use fingerprint',
              //   leading: Icon(Icons.fingerprint),
              //   switchValue: value,
              //   onToggle: (bool value) {},
              // ),
            ],
          ),
        ],
      ),
                // TextFieldWidget(
                //   label: 'Payment methods',
                //   text: ,
                //   onChanged: (name) {},
                // ),

                // const SizedBox(height: 24),
                // Row(children: [
                //   IconButton(
                //   padding: EdgeInsets.all(5),
                //   constraints: BoxConstraints(),
                //   alignment: Alignment.centerLeft,
                //   icon: Icon(Icons.add, size: 22,), 
                //   color: Colors.grey.shade800,
                //   onPressed: (){},
                // ),
                // Text("Add a card",
                // style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,)
                // ),
                // ],

                // TextFieldWidget(
                //   label: 'Email',
                //   text: user.email,
                //   onChanged: (email) {},
                // ),
                // const SizedBox(height: 24),
                // Center(child: buildUpgradeButton()),
                // const SizedBox(height: 24),
                // TextFieldWidget(
                //   label: 'About',
                //   text: user.about,
                //   maxLines: 5,
                //   onChanged: (about) {},
                // ),
                ],
            ),
          );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: Text("Linked Payment methods"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              backgroundColor: Colors.blue.shade300
            ),
      body: 
      SettingsList(
        sections: [
          SettingsSection(
            titlePadding: EdgeInsets.all(10),
            title: 'Credit/Debit card',
            tiles: [
              SettingsTile(
                title: 'Add New Card',
                // subtitle: 'English',
                leading: Icon(Icons.add),
                onPressed: (BuildContext context) {},
              ),
          
          

              // SettingsTile.switchTile(
              //   title: 'Use System Theme',
              //   leading: Icon(Icons.phone_android),
              //   switchValue: isSwitched,
              //   onToggle: (value) {
              //     setState(() {
              //       isSwitched = value;
              //     });
              //   },
              // ),
            ],
          ),

          SettingsSection(
            titlePadding: EdgeInsets.all(10),
            title: 'Google Pay',
            tiles: [
              SettingsTile(
                title: 'Add Account',
                // subtitle: 'English',
                // leading: Icon(FontAwesomeIcons.googlePay),
                leading: 

                Icon(FontAwesomeIcons.googlePay),
                onPressed: (BuildContext context) {},
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}

// class PayWidget extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context) {
//     return new ImageIcon(new AssetImage('/googlepayicon.png'),
    
//     );
//   }
// }
