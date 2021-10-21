import 'dart:ui';
import 'package:app/nav.dart';
import 'package:flutter/material.dart';
// import '../generatediphone11prox1widget/GeneratedIPhone11ProX1Widget.dart';
// import 'package:app/dashboard.dart';
// import 'package:app/give.dart';
// import 'package:app/nav.dart';
// import 'package:app/temp_home.dart';

import 'dart:io';
import 'package:app/app_theme.dart';
// import 'hotel_booking/hotel_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}




// BELOW is the ORIGINAL CODE that leads to the HOMEPAGE

// import 'package:flutter/material.dart';
// import '../generatediphone11prox1widget/GeneratedIPhone11ProX1Widget.dart';

// void main() {
//   runApp(HomepageApp());
// }

// class HomepageApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/GeneratedIPhone11ProX1Widget',
//       routes: {
//         '/GeneratedIPhone11ProX1Widget': (context) =>
//             GeneratedIPhone11ProX1Widget(),
//       },
//     );
//   }
// }


