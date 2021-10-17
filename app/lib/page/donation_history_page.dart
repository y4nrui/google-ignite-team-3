import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

// class DonationHistoryPage extends StatefulWidget {
//   @override
//   _DonationHistoryPageState createState() => _DonationHistoryPageState();
// }

// class _DonationHistoryPageState extends State<DonationHistoryPage> 
//   with SingleTickerProviderStateMixin{
//   late AnimationController controller;

//   @override
//   void initState() {
//     super.initState();
//     // controller = AnimationController(
//     //   vsync: this,
//     //   duration: Duration(milliseconds: 1000),
//     // );
//     // controller.forward();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Donation History"),
//         centerTitle: true,
//       ),
//       body: 
//       Container(
//       // Padding(
//       //   padding: EdgeInsets.all(100),
        
//       //   child: 
        
//       //   Align(
//       //     alignment: Alignment.topCenter,
//       //     child: Icon(FontAwesomeIcons.handHoldingHeart,
//       //   size: 70,
//       //   ),
//       //   )
        
//       // ),
//       child: ListView(
//             physics: BouncingScrollPhysics(),
//             children: [

//               // const SizedBox(height: 24),
//               // Center(child: buildcausesPreferencesButton()), 

//               SizedBox(
//               height: 130,
//             ),


//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Icon(
//                   FontAwesomeIcons.handHoldingHeart,
//                   color: Colors.blueGrey,
//                   size: 100,
//                 ),
//                 ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "  Payment methods", 
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
//               ),
//             ], 
//           ),   
      
//               ]),
//         ],
//       )
//     ));
//   }
// }

class DonationHistoryPage extends StatefulWidget {
  @override
  _DonationHistoryPageState createState() => _DonationHistoryPageState();
}

class _DonationHistoryPageState extends State<DonationHistoryPage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
  // => ThemeSwitchingArea(
  //       child: Builder(
  //         builder: (context) 
          
            appBar: AppBar(
              title: Text("Donation History"),
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
                const SizedBox(height: 40),
                Text(
                  "No donations yet?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 18,),
                Text(
                  "Don't worry!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
                ),
                SizedBox(height: 50,),

                AnimatedImage(),
                
                SizedBox(height: 50,),
                // Image.asset('assets/heart-hand-color.png'),

                SizedBox(height: 50,),
                Text(
                  "Get started right away: Tap the yellow button and you might just change someone's life.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                ),
                const SizedBox(height: 30),
                Center(child: buildUpgradeButton()),
              ],
            ),
          );

  Widget buildUpgradeButton() => ButtonWidget(
    text: 'Give now',
    onClicked: () {},
    );
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({ Key? key }) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
  duration: const Duration(seconds: 1),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller); 

  

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset('assets/heart-hand-color.png'),
    );
  }
}