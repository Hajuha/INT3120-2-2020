import 'package:flutter/material.dart';
import 'package:myapp/components/static_appbar.dart';
import 'package:myapp/utils/screen_config.dart';

class WordDetail extends StatefulWidget {
  final String word;

  const WordDetail({Key key, this.word}) : super(key: key);

  @override
  _WordDetailState createState() => _WordDetailState();
}

class _WordDetailState extends State<WordDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: SizeConfig.safeBlockVertical * 16,
            color: Color(0xFF006465),
            width: SizeConfig.screenWidth,
            child: Center(child: Text("Kanji Detail", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700))),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: BackButtonWidget(),
            ),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 12,
            child: Card(
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 35,
                height: SizeConfig.safeBlockVertical * 20,
                child: Center(
                    child: Text(
                  "${widget.word}",
                  style: TextStyle(fontSize: 60),
                )),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 35,
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical, horizontal: SizeConfig.safeBlockHorizontal * 4),
                width: SizeConfig.safeBlockHorizontal * 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 30,
                          child: Text("Kunyomi", style: TextStyle(color: Color(0xFF006465), fontSize: 17, fontWeight: FontWeight.w200)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4, vertical: SizeConfig.safeBlockVertical * 0.5),
                          child: Text("き", style: TextStyle(color: Colors.white, fontSize: 20)),
                          decoration: BoxDecoration(color: Color(0xFF006465), borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 30,
                          child: Text("Onyomi", style: TextStyle(color: Color(0xFF006465), fontSize: 17, fontWeight: FontWeight.w200)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 4, vertical: SizeConfig.safeBlockVertical * 0.5),
                          child: Text("モク", style: TextStyle(color: Colors.white, fontSize: 20)),
                          decoration: BoxDecoration(color: Color(0xFF006465), borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical),
                    Container(
                      child: Text("Example", style: TextStyle(color: Color(0xFF006465), fontSize: 17, fontWeight: FontWeight.w200)),
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical * 4),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 30,
                          child: Text("木", style: TextStyle(color: Color(0xFF006465), fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text("A tree", style: TextStyle(color: Color(0xFF006465), fontSize: 18, fontWeight: FontWeight.w200), textAlign: TextAlign.center),
                        Spacer(),
                        Icon(Icons.volume_up_outlined, color: Color(0xFF006465))
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 30,
                          child: Text("材木", style: TextStyle(color: Color(0xFF006465), fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text("Timber, lumber", style: TextStyle(color: Color(0xFF006465), fontSize: 18, fontWeight: FontWeight.w200), textAlign: TextAlign.center),
                        Spacer(),
                        Icon(Icons.volume_up_outlined, color: Color(0xFF006465))
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 30,
                          child: Text("木曜日", style: TextStyle(color: Color(0xFF006465), fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text("Thursday", style: TextStyle(color: Color(0xFF006465), fontSize: 18, fontWeight: FontWeight.w200), textAlign: TextAlign.center),
                        Spacer(),
                        Icon(Icons.volume_up_outlined, color: Color(0xFF006465))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
