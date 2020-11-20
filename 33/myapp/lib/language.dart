import 'package:flutter/material.dart';
import 'package:myapp/level.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff006265),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text("SELECT YOUR LANGUAGE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 120),
            Card(
              elevation: 5.0,
              color: Color(0xff5CA4A7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: new InkWell(
                child: Container(
                  width: 334,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        // width: 50,
                        height: 80.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          child: Image.asset(
                            // 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1200px-Flag_of_Vietnam.svg.png',
                            'assets/vietnam.png',
                            height: 80.0,
                            width: 90.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Text("VIETNAMESE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelPage()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5.0,
              color: Color(0xff5CA4A7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: new InkWell(
                child: Container(
                  width: 334,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        // width: 100.0,
                        height: 80.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          child: Image.asset(
                            // 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Great_Britain_%281707%E2%80%931800%29.svg/1200px-Flag_of_Great_Britain_%281707%E2%80%931800%29.svg.png',
                            'assets/england.png',
                            height: 80.0,
                            width: 90.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Text("ENGLISH",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
