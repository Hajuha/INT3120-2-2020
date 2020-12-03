import 'package:flutter/material.dart';
import 'package:myapp/pages/level_detail.dart';
import 'package:myapp/pages/word_detail.dart';
import 'package:myapp/utils/screen_config.dart';

class WordSelect extends StatefulWidget {
  final String title;

  const WordSelect({Key key, this.title}) : super(key: key);

  @override
  _WordSelectState createState() => _WordSelectState();
}

class _WordSelectState extends State<WordSelect> {
  List<Map<String, dynamic>> _data = [
    {
      "title": "Basic Kanji 1",
      "word": ["日", "月", "国", "日", "月", "国", "日", "月", "国", "日", "月", "国"]
    },
    {
      "title": "Basic Kanji 2",
      "word": ["日", "月", "国", "日", "月", "国", "日", "月", "国", "日", "月", "国"]
    },
    {
      "title": "Numbers",
      "word": ["日", "月", "国", "日", "月", "国", "日", "月", "国", "日", "月", "国", "日", "月"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(child: _buildWidget()),
            Container(
              color: Color(0xFF006265),
              height: SizeConfig.safeBlockVertical * 26,
              width: SizeConfig.screenWidth,
              child: Column(
                children: [
                  Image.asset("assets/logo.png", height: SizeConfig.safeBlockVertical * 18),
                  Container(
                    child: Text("${widget.title}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF006265))),
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 5, vertical: SizeConfig.safeBlockVertical),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.all(8),
                  width: SizeConfig.safeBlockHorizontal * 20,
                  height: SizeConfig.safeBlockVertical * 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.fill, image: AssetImage("assets/en_flag.png"))),
                      ),
                      Text("EN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), textAlign: TextAlign.center)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildWidget() => SingleChildScrollView(
        padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 28),
        child: Column(
          children: List.generate(
              _data.length,
              (index) => Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    elevation: 4,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${_data[index]["title"]}", style: TextStyle(color: Color(0xFF006265), fontWeight: FontWeight.w700, fontSize: 18)),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LevelDetail(moduleTitle: "${_data[index]["title"]}"),
                                    )),
                                child: Icon(Icons.arrow_right_alt_sharp, color: Color(0xFF006265)),
                              )
                            ],
                          ),
                          SizedBox(height: SizeConfig.safeBlockVertical * 2),
                          GridView.builder(
                            itemCount: (_data.elementAt(index)["word"] as List).length,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 2),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6, childAspectRatio: 8 / 9),
                            itemBuilder: (BuildContext context, int index2) {
                              return Container(
                                margin: const EdgeInsets.all(6.0),
                                child: FlatButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WordDetail(word: "${(_data.elementAt(index)["word"] as List).elementAt(index2)}"))),
                                  shape: CircleBorder(),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xFFB3D1D1),
                                    radius: 25,
                                    child: Text(
                                      "${(_data.elementAt(index)["word"] as List).elementAt(index2)}",
                                      style: TextStyle(color: Color(0xFF006465), fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      );
}
