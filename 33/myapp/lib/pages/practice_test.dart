import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/static_appbar.dart';
import 'package:myapp/utils/screen_config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'level_detail.dart';

class PracticeTest extends StatefulWidget {
  @override
  _PracticeTestState createState() => _PracticeTestState();
}

class Question {
  String key;
  List<Anwser> anwsers;

  Question(this.key, this.anwsers);
}

class Anwser {
  String key;
  bool isTrue;
  int isCorrect = 0;
  bool isChoose = false;

  Anwser(this.key, this.isTrue);
}


class _PracticeTestState extends State<PracticeTest> {
  int _totalQuestion = 10;
  int _curentQuestionIndex = 0;
  double _progress = 0;
  bool isTrue = false;
  List<Question> _listQuestion = [
    Question("日", [Anwser("Sun/Day", true), Anwser("Dog", false), Anwser("Cat", false), Anwser("Moon", false)]),
    Question("月", [Anwser("Sun/Day", false), Anwser("Moon", true), Anwser("Fish", false), Anwser("One", false)]),
    Question("本", [Anwser("Book", true), Anwser("Cat", false), Anwser("Sun/Day", false), Anwser("Now", false)]),
    Question("四", [Anwser("Three", false), Anwser("One", false), Anwser("Four", true), Anwser("Ten", false)]),
    Question("五", [Anwser("Five", true), Anwser("Dog", false), Anwser("Now", false), Anwser("Sun/Day", false)]),
    Question("八", [Anwser("One", false), Anwser("Eight", true), Anwser("Nine", false), Anwser("Sun/Day", false)]),
    Question("魚", [Anwser("Cat", false), Anwser("Dog", false), Anwser("Fish", true), Anwser("Moon", false)]),
    Question("青", [Anwser("Black", false), Anwser("White", false), Anwser("Blue", true), Anwser("Yellow", false)]),
    Question("三", [Anwser("Three", true), Anwser("Dog", false), Anwser("Sun/Day", false), Anwser("Moon", false)]),
    Question("犬", [Anwser("Dog", true), Anwser("Cat", false), Anwser("Duck", false), Anwser("Bird", false)]),
  ];
  Question _curentQuestion;
  int _quizTrue = 0;
  bool _isDone=false;

  @override
  void initState() {
    _curentQuestion = _listQuestion.elementAt(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(title: "Practive Test"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Câu hỏi ${_curentQuestionIndex + 1}/${_totalQuestion}"
              ,style: TextStyle(
                  fontSize: 16
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                width: SizeConfig.blockSizeHorizontal * 90,
                lineHeight: SizeConfig.blockSizeVertical * 1,
                percent: _progress,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.grey,
              ),
            ),
            Text("Anwser true: ${_quizTrue.toString()}"
            ,style: TextStyle(
                color: Color(0xFF006465),
                fontSize: 50
              ),),
            Text(
              _curentQuestion.key.toString() ?? "",
              style: TextStyle(fontSize: 100, color: Color(0xFF006465)),
            ),
            GridView.builder(
              itemCount: 4,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 9 / 7),
              itemBuilder: (context, index) {
                return AnswerCard(_listQuestion.elementAt(_curentQuestionIndex).anwsers.elementAt(index));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget AnswerCard(Anwser anwser) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: SizeConfig.blockSizeVertical * 10,
        width: SizeConfig.blockSizeHorizontal * 40,
        color: Colors.transparent,
        child: Card(
          child: RaisedButton(
            color: anwser.isChoose ? (anwser.isTrue ? Color(0xFF05FF00) : Colors.red) : Colors.white,
            onPressed: () {
              setState(() {
                anwser.isChoose = true;
              });
              Future.delayed(Duration(milliseconds: 500), () {
                setState(() {
                  if (_curentQuestionIndex >= 9) {
                    _curentQuestionIndex = 0;
                    _progress = 0;
                    showDialog(context: context,builder: (context) {
                      return AlertDialog(
                        title: Text("Finish"),
                        content: SingleChildScrollView(child: Center(child: Text("Đúng ${_quizTrue}"))),
                        actions: [
                          FlatButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelDetail(moduleTitle: "BasicKanji 1")));
                          }, child: Icon(Icons.home,size: 25,color: Colors.teal,))

                        ],
                      );
                    },);
                  } else {
                    _curentQuestionIndex += 1;
                    _progress += 0.1;
                    _curentQuestion = _listQuestion.elementAt(_curentQuestionIndex);
                    if (anwser.isTrue) {
                      _quizTrue++;
                    }
                    print(_quizTrue);
                  }
                });
              });
            },
            child: Center(
              child: Text(
                anwser.key,
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 8,
                    fontWeight: FontWeight.bold,
                    color: anwser.isChoose ? Colors.white : Color(0xFF006465)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
