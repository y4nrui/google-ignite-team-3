// PLEASE NOTE: I changed main.dart to route to dashboard first
// SCROLL DOWN for the code that leads to HOMEPAGE
import 'package:flutter/material.dart';
// import '../generatediphone11prox1widget/GeneratedIPhone11ProX1Widget.dart';
import 'package:app/dashboard.dart';

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
      home: Dashboard(),
    );
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


