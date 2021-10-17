import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Colors.orange.shade200,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}

class CausesButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const CausesButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }): super(key: key);

// Widget build(BuildContext context) =>  ElevatedButton.icon(
//         label: Text("Causesxd"),
//         icon: Icon(
//           Icons.arrow_forward_ios,
//           color: Colors.blueGrey,
//           size: 22,
          
//           ),
        
        
//         onPressed: () {
//           print('pressed');
//         },
//         style: ElevatedButton.styleFrom(
//             shape: new RoundedRectangleBorder(
//               borderRadius: new BorderRadius.circular(20.0),
//             ),

//       ),
//     );
// }

  Widget build(BuildContext context) => ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          primary: Colors.blue.shade200,
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        ),
        
        
        child: 
        Text(text,
        ),

        
        onPressed: onClicked,

      );

}
                // Icon(
                //   Icons.checklist_rounded,
                //   color: Colors.blueGrey,
                //   size: 20,
                // ),
                // Text(
                //   "  Terms of use", 
                //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade800),
                // ),
                // Spacer(),
                // IconButton(
                //   padding: EdgeInsets.all(5),
                //   constraints: BoxConstraints(),
                //   alignment: Alignment.centerLeft,
                //   icon: Icon(Icons.arrow_forward_ios, size: 20,), 
                //   color: Colors.grey.shade800,
                //   onPressed: (){
                //   },
                // ),      
