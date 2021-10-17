// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/model/user.dart';
import 'package:app/page/edit_profile_page.dart';
import 'package:app/utils/user_preferences.dart';
import 'package:app/widget/appbar_widget.dart';
import 'package:app/widget/button_widget.dart';
// import 'package:flutter_application_editing_state/widget/numbers_widget.dart';
import 'package:app/widget/profile_widget.dart';
import 'package:app/page/causes_page.dart';
import 'package:app/page/account_page.dart';
import 'package:app/page/donation_history_page.dart';
import 'package:app/page/about_us_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return 
    // ThemeSwitchingArea(
    //   child: Builder(
    //     builder: (context) => 
        Scaffold(
          appBar: buildAppBar(context),
          body: Container(
          padding: EdgeInsets.only(left: 16, top: 20, right: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [

              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {
                  // navigator allows you to navigate to a new page.
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
              ),

              
                
              

              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              // Center(child: buildcausesPreferencesButton()),
              
              
              ElevatedButton.icon(
                
                icon: Text("Causes Preferences",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.right,), 
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange.shade200,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                label: Icon(Icons.settings,
                size: 19),
                
                onPressed: () {
                  // onClicked: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WrapWidget()),
                  );
                  // };
                },
                ), 

              SizedBox(
              height: 30,
            ),
              Row(
              children: [
                // Icon(Icons.person,
                // color: Colors.blue,),
                SizedBox(
                  width: 8,
                ),
                Text( "Account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.credit_card,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                Text(
                  "  Payment methods", 
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 19,), 
                  color: Colors.grey.shade800,
                  onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                  },
                ),
              ],
            ),

            Row(

              children: [
                
                Icon(
                  Icons.notes,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                Text(
                  "  Donation history",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(6),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 19,), 
                  color: Colors.grey.shade800,
                  onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DonationHistoryPage()),
                  );
                  },
                ),
              ],
            ), 
          SizedBox(
              height: 30,
            ),
              Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text( "Notifications",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),


            Row(
              children: <Widget>[
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                Text(
                  " Push notifications", 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                // Switch(
                //   value: isSwitched, 
                //   onChanged: (value){
                //     setState(() {
                //       isSwitched = value;
                //       print('$value');
                //     });
                //   }
                // ),

                Transform.scale(
                  scale: 0.9,
                  child: 
                    Switch(
                      value: isSwitched, 
                      onChanged: (value){
                        setState(() {
                          isSwitched = value;
                          print('$value');
                        });
                      }
                    ),
                  
                // ),
                // SwitchListTile(
                //   title: Text('ListTile'),
                //   value: _toggled, 
                //   onChanged: (bool value) {
                //     setState(() => _toggled =value);
                //   },
                //   ),

                // IconButton(
                //   padding: EdgeInsets.all(5),
                //   constraints: BoxConstraints(),
                //   alignment: Alignment.centerLeft,
                //   icon: Icon(Icons.toggle_on_outlined,
                //   size: 26,), 
                //   color: Colors.grey.shade800,
                //   onPressed: (){
                //     // Navigator.of(context).push(
                //     // MaterialPageRoute(builder: (context) => EditProfilePage()),
                //   // );
                //   },
                // ),
                
                )],
            ),

            SizedBox(
              height: 30,
            ),
              Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text( "About App",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_box_outlined,
                  color: Colors.blueGrey,
                  size: 19,
                ),
                Text(
                  "  About us", 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 20,), 
                  color: Colors.grey.shade800,
                  onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ),
              ],
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.question_answer_outlined,
                  color: Colors.blueGrey,
                  size: 19,
                ),
                Text(
                  "  FAQ", 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 20,), 
                  color: Colors.grey.shade800,
                  onPressed: (){
                  },
                ),
              ],
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.checklist_rounded,
                  color: Colors.blueGrey,
                  size: 19,
                ),
                Text(
                  "  Terms of use", 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 20,), 
                  color: Colors.grey.shade800,
                  onPressed: (){
                  },
                ),
              ],
            ),

            Row(
              children: [
                Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.blueGrey,
                  size: 19
                ),
                Text(
                  "  Privacy policy", 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(),
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_forward_ios, size: 20,), 
                  color: Colors.grey.shade800,
                  onPressed: (){},
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.person,
                // color: Colors.blue,),
                SizedBox(
                  width: 8,
                ),
                Text( "Contact Us",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email_outlined,
                color: Colors.blue,
                size: 18,),
                SizedBox(
                  width: 8,
                ),
                Text( "help@ignite.com",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),

            ],

          
          ),
        ),
        );

      

  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildcausesPreferencesButton() => CausesButtonWidget(
    
    text: 'Causes Preferences', 
    
    onClicked: () {
      Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => WrapWidget()),
      );
    },
    );

  
}