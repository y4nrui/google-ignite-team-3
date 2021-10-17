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
import 'package:app/page/profile_page.dart';


// class CausesPage extends StatefulWidget {
//   @override
//   _CausesPageState createState() => _CausesPageState();
// }

// class _CausesPageState extends State<CausesPage> {
//   // User user = UserPreferences.myUser;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//   // => ThemeSwitchingArea(
//   //       child: Builder(
//   //         builder: (context) 
          
//             appBar: AppBar(
//               title: Text("My Causes Preferences"),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(
//                   bottom: Radius.circular(30),
//                 ),
//               ),
//               backgroundColor: Colors.blue.shade300
//             ),

//             body: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
//               physics: BouncingScrollPhysics(),
//               children: [
//                 const SizedBox(height: 24),
//                 Center(child: buildElderlyButton()),
//                 const SizedBox(height: 24),
//                 Center(child: buildAnimalsButton()),
//               ],
//             ),
//           );

//   Widget buildElderlyButton() => ButtonWidget(
//     text: 'Elderly',
//     onClicked: () {},
//     );
//   Widget buildAnimalsButton() => ButtonWidget(
//     text: 'Animals',
//     onClicked: () {},
//     );
// }

class WrapWidget extends StatefulWidget{
  final String title = 'My Causes Preferences';
  @override 
  State<StatefulWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  
  late GlobalKey<ScaffoldState> _key;
  late List<String> _dynamicChips;
  // bool _isSelected;
  // ignore: unused_field
  late List<Company> _companies;
  late List<String> _filters;


  @override 
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState> ();
    // _isSelected; false;
    _filters = <String> [];
    _companies =<Company>[
      const Company('Animal Welfare'),
      const Company("Elderly"),
      const Company('Community'),
      const Company('Children & youth'),
      const Company('Arts & culture'),
      const Company('Disability'),
      const Company('Education'),
      const Company('Health'),
      const Company('Environment'),
      const Company('Families'),
      const Company('Social service'),
      const Company('Humanitarian'),
    ];
    _dynamicChips = ['Animal Welfare', 'Elderly'];
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
              title: Text("My Causes Preferences"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              backgroundColor: Colors.blue.shade300
            ),
      
      body: 
      Column(
        
        children:  <Widget>[
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   // child: 
          //   // rowChips(),
            
          // ),
          // wrapWidget(),
          // Divider(),
          // dynamicChips(),
          // Divider(),

          SizedBox(height:20),
          Wrap(
            alignment: WrapAlignment.center,
            children: 
            CompanyWidgets.toList(),
          ),
          SizedBox(height: 20,),
          Text('Selected: ${_filters.join(', ')}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16,color: Colors.black,
            ),),
          
          // Divider(),
          // inputChips(),
          SizedBox(height: 30,),
          OutlinedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => GivePage())
                  //   );
                },
                
                child: const Text("Save Selection",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2, color: Colors.black)),
          )],
        
      ),
    );
  }

  // wrapWidget() {
  //   return Wrap(
  //     // spacing: 6.0,
  //     // runSpacing: 6.0,
  //     children: <Widget>[
  //       chipForRow('Animal Welfare', Color(0xFFff8a65)),
  //       chipForRow('Elderly', Color(0xFF4fc3f7)),
  //       chipForRow('Community', Color(0xFF9575cd)),
  //       chipForRow('Children & youth', Color(0xFF4db6ac)),
  //       chipForRow('Arts & culture', Color(0xFF5cda65)),
  //     ],
  //   );
  // }

  // dynamicChips() {
  //   return Wrap(
  //     spacing: 6.0,
  //     runSpacing: 6.0,
  //     children: List<Widget>.generate(_dynamicChips.length, (int index){
  //       return Chip(
  //         label: Text(_dynamicChips[index]),
  //         onDeleted: (){
  //           setState(() {
  //             _dynamicChips.removeAt(index);
  //           });
  //         },
  //       );
  //     }),
  //   );
  // }

  // Widget chipForRow(String label, Color color){
  //   return Container(
  //     margin: EdgeInsets.all(6.0),
  //     child: Chip(
  //       labelPadding: EdgeInsets.all(5.0),
  //       avatar: CircleAvatar(
  //         backgroundColor: Colors.grey.shade600,
  //         child: 
  //         // Icon(Icons.pets),
  //         Text(label[0].toUpperCase()),
  //       ),
  //       label: Text(
  //         label, 
  //         style: TextStyle(
  //           color: Colors.white,
  //         ),
  //       ),
  //       backgroundColor: color, 
  //       elevation: 6.0,
  //       shadowColor: Colors.grey[60],
  //       padding: EdgeInsets.all(6.0),
  //     ),
  //   );
    
  // }

  Iterable<Widget> get CompanyWidgets sync*{
    for (Company company in _companies){
      yield Padding(
        padding: const EdgeInsets.all(4),
        child: FilterChip(
          // avatar: CircleAvatar(
          //   child: 
          //   Text(company.name[0].toUpperCase()),
          // ),
          label: Text(company.name),
          backgroundColor: Colors.cyan.shade200,
          selected: _filters.contains(company.name),
          onSelected: (bool selected){
            setState(() {
              if(selected){
              _filters.add(company.name);
            } else{
              _filters.removeWhere((String name){
                return name == company.name;
              });
            }
            });
            
          }
        ),
        );
    }
  }

  // Widget inputChips() {
  //   return InputChip(
  //     padding: EdgeInsets.all(6.0),
  //     avatar: CircleAvatar(
  //       backgroundColor: Colors.blue.shade600,
  //       child: Text('JW'),
  //     ),
  //     label: Text('James Watson'),
  //     selected: _isSelected,
  //     selectedColor: Colors.green,
  //     onSelected: (bool selected){
  //       setState(() {
  //         _isSelected = selected;
  //       });
  //     },
  //   );
  // }
}

class Company {
  const Company(this.name);
  final String name;
}