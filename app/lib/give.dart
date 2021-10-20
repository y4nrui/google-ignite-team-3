// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:app/dashboard.dart';
// import 'dart:developer';

// class GiveView extends StatefulWidget {
//   @override
//   _GiveViewState createState() => _GiveViewState();
// }

// class _GiveViewState extends State<GiveView> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   final List<Widget> _children = [
//     Page2(),
//     Page3(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           backgroundColor: Colors.blueAccent,
//           buttonBackgroundColor: Colors.grey[100],
//           items: <Widget>[
//             Icon(Icons.home_outlined, size: 30),
//             Icon(Icons.analytics_outlined, size: 30),
//             Icon(Icons.forum_outlined, size: 30),
//             Icon(Icons.person_outlined, size: 30),
//           ],
//           onTap: (index) {
//             //Handle button tap
//             setState(() {
//               _page = index;
//               print('$index');
//             });
//           },
//         ),
//         body: TabNavigator(index));
//   }
// }

// class TabNavigator extends StatelessWidget {
//   TabNavigator({required this.tabItem});
//   final String tabItem;
//   @override
//   Widget build(BuildContext context) {
//     Widget child;
//     if (tabItem == 1)
//       child = Dashboard();
//     else if (tabItem == 2)
//       child = Dashboard();
//     else if (tabItem == 3)
//       child = Dashboard();
//     else if (tabItem == 4) 
//       child = Dashboard();

//     return Scaffold(body: <Widget>child);
//   }
// }
