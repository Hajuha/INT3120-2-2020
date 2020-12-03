import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/language.dart';
import 'package:myapp/utils/screen_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff006465),
          body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                height: 200.0,
                width: 200.0,
                child: Align(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              )
            ]),
          ),
        ),
      ),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LanguagePage()));
  }
}
