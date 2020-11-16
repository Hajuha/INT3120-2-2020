import 'package:flutter/material.dart';
import 'package:myapp/Level.dart';


class WordChoose extends StatelessWidget {
  const WordChoose({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff006465),
            body: Center(
                child: Column(children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: Align(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 5.0,
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LevelPage()))
                        },
                        child: Container(
                          width: 150,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('BEGINNER',
                                  style: TextStyle(
                                      color: Color(0xff006465),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ))
                ]))));
  }
}