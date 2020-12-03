import 'package:myapp/components/LevelCard.dart';
import 'package:flutter/material.dart';

class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff006465),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SELECT YOUR LEVEL", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
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
