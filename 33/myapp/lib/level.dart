// import 'package:flutter/material.dart';
//
//
// class LevelPage extends StatefulWidget {
//   @override
//   _LevelPageState createState() => _LevelPageState();
// }
//
// class _LevelPageState extends State<LevelPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           backgroundColor: Color(0xff006265),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("SELECT YOUR LEVEL",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold)),
//                 SizedBox(height: 50),
//                 Card(
//                   color: Color(0xff5ca4a7),
//                   elevation: 5.0,
//                   child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(width: 20),
//                         Text("BEGINNER 1",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 Card(
//                   color: Color(0xff5ca4a7),
//                   elevation: 5.0,
//                   child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(width: 20),
//                         Text("BEGINNER 2",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 Card(
//                   color: Color(0xff5ca4a7),
//                   elevation: 5.0,
//                   child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(width: 20),
//                         Text("PRE-INTERMEDIATE 1",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 Card(
//                   color: Color(0xff5ca4a7),
//                   elevation: 5.0,
//                   child: Container(
//                     width: 300,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(width: 20),
//                         Text("PRE-INTERMEDIATE 1",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:myapp/components/LevelCard.dart';

class LevelPage extends StatefulWidget {

  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage > {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff006465),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SELECT YOUR LEVEL",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 150),
                LevelCard("BEGINNER 1"),
                SizedBox(height: 25),
                LevelCard("BEGINNER 2"),
                SizedBox(height: 25),
                LevelCard("PRE-INTERMEDIATE 1"),
                SizedBox(height: 25),
                LevelCard("PRE-INTERMEDIATE 2"),
              ],
            ),
          ),
        ));
  }
}
