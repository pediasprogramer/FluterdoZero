import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivial/Score.dart';
import 'package:trivial/question.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionslist = Question.getQuestionsList();

  void verifyResponse() {
    if (answer == questionslist[index].answer) {
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: (Image(
          height: 30,
          width: 400,
          image: AssetImage(
            'lib/assets/simbolo.png',
          ),
        )),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(31, 56, 31, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pergunta 1:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  questionslist[index].questionText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(31, 10, 31, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text(questionslist[index].option1),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(31, 10, 31, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text(questionslist[index].option2),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(31, 10, 31, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                  ),
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    title: Text(questionslist[index].option3),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(31, 10, 31, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3))
                    ],
                  ),
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    title: Text(questionslist[index].option4),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyResponse();

                  if (index < questionslist.length - 1) {
                    setState(() {
                      index = index + 1;
                      answer = 0;
                    });
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScoreScreen(
                                  maximuns: questionslist.length,
                                  result: score,
                                )));
                  }
                },
                child: Text(
                  'Responder',
                  style: TextStyle(fontSize: 15),
                ),
                color: Color(0xffDA0175),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
