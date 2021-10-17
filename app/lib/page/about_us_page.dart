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

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('About us'),
      // ),
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(''),
              backgroundColor: Colors.blue.shade200,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/Elderly-Poor-Singapore.png",
                fit: BoxFit.cover,
                ),
                // Image.asset('assets/heart-hand-color.png'),
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('About us', style: TextStyle(fontSize: 22)),
                        // _buildName(),
                        SizedBox(height: 16),
                        // RaisedButton(
                        //   child: Text('Submit'),
                        //   onPressed: _submit,
                        Text("As many Singaporeans lead increasingly fast paced lifestyles, it's easy to forget those who are left behind.\n\nOur goal is clear: to reduce the levels of income inequality in Singapore. Although the GINI coefficient seems to have reduced over the past years, the income gap between those in the bottom 10% and top 10% has actually widened since 2009.\n\nOur app empowers you to give back conveniently to the community through any organisation of your choice. As long as we Singaporeans work together, in the spirit of giving, we believe that the lives of many can be changed for the better.", 
                        // style: TextStyle(fontSize: 22,)
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                        ),
                        // _buildName(),
                        SizedBox(height: 16),
            
          ],
        ),
      ),
    )
  ]),
),
            // SliverList(
            //   delegate: SliverChildListDelegate([
            //     Container(
            //       // margin: EdgeInsets.all(24),
                  
            //         child: 
            //         Row(
            //           // mainAxisAlignment: MainAxisAlignment.center,
            //           children: <Widget>[
            //             SizedBox(height: 70,),
            //             // Text('Add Name', style: TextStyle(fontSize: 22)),
            //             Text("    Curious about us?",
            //             textAlign: TextAlign.left,
            //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(height: 50,),
            //           ]
            //         )
            //     ),
            //   ]),
            // )],
          ]  
        ),
      
    );
  }
}
         


//   // => ThemeSwitchingArea(
//   //       child: Builder(
//   //         builder: (context) 
          
//             appBar: AppBar(
//               title: Text("About us"),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(
//                   bottom: Radius.circular(30),
//                 ),
//               ),
//               // backgroundColor: Colors.blue.shade300
              

//             ),

//             body: ListView(
//               padding: EdgeInsets.only(left: 16, top: 25, right: 16),


//               physics: BouncingScrollPhysics(),


//               children: <Widget>[
//                 // ProfileWidget(
//                 //   imagePath: user.imagePath,
//                 //   isEdit: true,
//                 //   onClicked: () async {},
//                 // ),
//                 // profilewidget displays the image

//                 // SliverAppBar(
//                 //   title: Text(''),
//                 //   backgroundColor: Colors.transparent,
//                 //   expandedHeight: 300.0,
//                 //   flexibleSpace: FlexibleSpaceBar(
//                 //     background: Image.asset('assets/heart-hand-color.png'),
//                 //   ),
//                 // ),
//                 new Image.asset("assets/Elderly-Poor-Singapore.png"), 

//                 const SizedBox(height: 20),
//                 Text(
//                   "Curious about us?",
//                   // textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 18,),
//                 // Text(
//                 //   "Don't worry!",
//                 //   // textAlign: TextAlign.center,
//                 //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
//                 // ),

//                 // SizedBox(height: 50,),

//                 // AnimatedImage(),
                
//                 // SizedBox(height: 50,),
//                 // Image.asset('assets/heart-hand-color.png'),

//                 // SizedBox(height: 50,),
                
//                 Text(
//                   "Get started right away: Tap the yellow button and you might just change someone's life.",
//                   // textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
//                 ),
//                 const SizedBox(height: 30),
//                 // Center(child: buildUpgradeButton()),
//               ],
//             ),
//           );

//   Widget buildUpgradeButton() => ButtonWidget(
//     text: 'Give now',
//     onClicked: () {},
//     );
// }

// // class AnimatedImage extends StatefulWidget {
// //   const AnimatedImage({ Key? key }) : super(key: key);

// //   @override
// //   _AnimatedImageState createState() => _AnimatedImageState();
// // }

// // class _AnimatedImageState extends State<AnimatedImage>
// //     with SingleTickerProviderStateMixin {
// //   late final AnimationController _controller = AnimationController(
// //     vsync: this,
// //   duration: const Duration(seconds: 1),
// //   )..repeat(reverse: true);

// //   late final Animation<Offset> _animation = Tween<Offset>(
// //     begin: Offset.zero,
// //     end: Offset(0, 0.08),
// //   ).animate(_controller); 

  

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _controller.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return SlideTransition(
// //       position: _animation,
// //       child: Image.asset('assets/heart-hand-color.png'),
// //     );
// //   }
// // }