import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/static_appbar.dart';
import 'package:myapp/pages/word_detail.dart';
import 'package:myapp/utils/screen_config.dart';

class WordChoose extends StatefulWidget {
  @override
  _WordChooseState createState() => _WordChooseState();
}

class CardKanji {
  String text;
  String meaning;
  bool isSelect;

  CardKanji({this.text, this.isSelect, this.meaning});
}

class _WordChooseState extends State<WordChoose> {
  List<CardKanji> _cardKanjiList = [
    CardKanji(text: "日", meaning: "Sun/Day", isSelect: false),
    CardKanji(text: "月", meaning: "Moon", isSelect: false),
    CardKanji(text: "本", meaning: "Book", isSelect: false),
    CardKanji(text: "一", meaning: "One", isSelect: false),
    CardKanji(text: "二", meaning: "Two", isSelect: false),
    CardKanji(text: "三", meaning: "Three", isSelect: false),
    CardKanji(text: "四", meaning: "Four", isSelect: false),
    CardKanji(text: "五", meaning: "Five", isSelect: false),
    CardKanji(text: "六", meaning: "Six", isSelect: false),
    CardKanji(text: "七", meaning: "Seven", isSelect: false),
    CardKanji(text: "八", meaning: "Eight", isSelect: false),
    CardKanji(text: "九", meaning: "Nine", isSelect: false),
    CardKanji(text: "日", meaning: "Sun/Day", isSelect: true),
    CardKanji(text: "月", meaning: "Moon", isSelect: false),
    CardKanji(text: "本", meaning: "Book", isSelect: false),
    CardKanji(text: "一", meaning: "One", isSelect: false),
    CardKanji(text: "二", meaning: "Two", isSelect: false),
    CardKanji(text: "三", meaning: "Three", isSelect: false),
    CardKanji(text: "四", meaning: "Four", isSelect: false),
    CardKanji(text: "五", meaning: "Five", isSelect: false),
    CardKanji(text: "六", meaning: "Six", isSelect: false),
    CardKanji(text: "七", meaning: "Seven", isSelect: false),
    CardKanji(text: "八", meaning: "Eight", isSelect: false),
    CardKanji(text: "九", meaning: "Nine", isSelect: false),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(title: "Basic Kanji 1"),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(_cardKanjiList.length, (index) {
            return Card(
                child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WordDetail(word: _cardKanjiList[index].text))),
                    child: _cardKanji(_cardKanjiList[index])));
          }),
        ),
      ),
    );
  }

  Widget _cardKanji(CardKanji cardKanji) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 28,
      height: SizeConfig.blockSizeHorizontal * 28,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: SizedBox()),
          Row(children: [
            Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.topCenter,
              width: SizeConfig.blockSizeHorizontal * 3,
              height: SizeConfig.blockSizeHorizontal * 3,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90), border: Border.all(color: Color(0xFF006465))),
            ),
            SizedBox(width: SizeConfig.blockSizeHorizontal * 2)
          ]),
          Text(cardKanji.text, style: TextStyle(color: Color(0xFF006465), fontSize: 40, fontWeight: FontWeight.w400)),
          Text(cardKanji.meaning, style: TextStyle(color: Color(0xFF006465), fontSize: 14, fontWeight: FontWeight.w400)),
          Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
