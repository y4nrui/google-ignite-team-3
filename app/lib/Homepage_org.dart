//orginal code but errors within containers. hence, not in used unless fixed

/*import 'package:flutter/material.dart';
import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;

class HomepageWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 10,
        left: 6,
        child: Container(
      width: 363,
      height: 723.6818237304688,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 363,
      height: 723.6818237304688,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 1,
        left: 2,
        child: Container(
        width: 283,
        height: 35,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(222, 226, 230, 1),
          width: 1,
        ),
  )
      )
      ),Positioned(
        top: 54.54547119140625,
        left: 0,
        child: Container(
      width: 363,
      height: 669.1363525390625,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 8.278411865234375,
        child: Container(
      width: 345.7215881347656,
      height: 669.1363525390625,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 345.7215881347656,
      height: 669.1363525390625,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 238.4545440673828,
        left: 2.7215919494628906,
        child: SvgPicture.asset(
        'assets/images/image2.svg',
        semanticsLabel: 'image2'
      );
      ),Positioned(
        top: 237.4545440673828,
        left: 177.72158813476562,
        child: SvgPicture.asset(
        'assets/images/image3.svg',
        semanticsLabel: 'image3'
      );
      ),Positioned(
        top: 457.45452880859375,
        left: 2.721588134765625,
        child: SvgPicture.asset(
        'assets/images/image4.svg',
        semanticsLabel: 'image4'
      );
      ),Positioned(
        top: 457.45452880859375,
        left: 177.72158813476562,
        child: SvgPicture.asset(
        'assets/images/image5.svg',
        semanticsLabel: 'image5'
      );
      ),Positioned(
        top: 205.15625,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/categories.svg',
        semanticsLabel: 'categories'
      );
      ),Positioned(
        top: 0,
        left: 0.44318199157714844,
        child: Container(
      width: 123.23224639892578,
      height: 17.71875,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/dashboard.svg',
        semanticsLabel: 'dashboard'
      );
      ),
        ]
      )
    )
      ),Positioned(
        top: 425.6253662109375,
        left: 52.56023406982422,
        child: SvgPicture.asset(
        'assets/images/healthcare.svg',
        semanticsLabel: 'healthcare'
      );
      ),Positioned(
        top: 425.4463806152344,
        left: 227.79718017578125,
        child: SvgPicture.asset(
        'assets/images/children.svg',
        semanticsLabel: 'children'
      );
      ),Positioned(
        top: 652.3636474609375,
        left: 60.460227966308594,
        child: SvgPicture.asset(
        'assets/images/elderly.svg',
        semanticsLabel: 'elderly'
      );
      ),Positioned(
        top: 652.0216064453125,
        left: 226.6727294921875,
        child: SvgPicture.asset(
        'assets/images/disabled.svg',
        semanticsLabel: 'disabled'
      );
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),Positioned(
        top: 26.45452880859375,
        left: 0,
        child: Container(
      width: 363,
      height: 162,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 363,
      height: 162,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/rectangle49.svg',
        semanticsLabel: 'rectangle49'
      );
      ),Positioned(
        top: 18.00000762939453,
        left: 338.1873474121094,
        child: null
      ),Positioned(
        top: 97.64383697509766,
        left: 13.920353889465332,
        child: Text('into helping the community!', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 115.00000762939453,
        left: 10.108842849731445,
        child: Container(
      width: 343.8912048339844,
      height: 30.058856964111328,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 249.89115942173157,
        child: Transform.rotate(
        angle: -9.161297176681266e-16 * (math.pi / 180),
        child: Text('85% of goal', textAlign: TextAlign.right, style: TextStyle(
        color: Color.fromRGBO(84, 88, 113, 1),
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
      )
      ),Positioned(
        top: 21.588266993268235,
        left: 0,
        child: Transform.rotate(
        angle: -9.161297017473445e-16 * (math.pi / 180),
        child: Container(
        width: 343.7012634277344,
        height: 8.470588684082031,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
      color : Color.fromRGBO(221, 221, 221, 1),
  )
      ),
      )
      ),Positioned(
        top: 21.588266993268235,
        left: 0,
        child: Transform.rotate(
        angle: -9.161297017473445e-16 * (math.pi / 180),
        child: Container(
        width: 298.6708679199219,
        height: 8.470588684082031,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(0),
          ),
      color : Color.fromRGBO(109, 167, 246, 1),
  )
      ),
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 49.76470184326172,
        left: 18.379756927490234,
        child: Text('\$ 85.00'

, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 23,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 18.00000762939453,
        left: 12.865815162658691,
        child: Text('You have contributed:', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 17,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),Positioned(
        top: 0,
        left: 293,
        child: Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(38, 40, 41, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('Profile', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Inter',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),

        ],
      ),
    )
      ),
        ]
      )
    )
      ),Positioned(
        top: 6,
        left: 11,
        child: Text('Search', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(171, 181, 190, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 752,
        left: 0,
        child: null
      ),
        ]
      )
    );
          }
        }
        */


