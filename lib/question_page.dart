import 'package:flutter/material.dart';

import 'data/QuestionList.dart';
import 'widgets/question_card.dart';

QuestionList _questionList = new QuestionList();

class QuestionPage extends StatefulWidget {
  QuestionPage({Key key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int queNumber = 0;
  int totalScore = 0;

  var userScore = 0;

  void showNextQue(int userScore) {
    setState(() {
      if (_questionList.isFinished()) {
        _showResult(totalScore);
        _questionList.resetQue();
        totalScore = 0;
      } else {
        _questionList.nextQue();
        totalScore += userScore;
      }
//      print('Total score $totalScore');
    });
  }

  void _showResult(int totalScore) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String riskText;
          if (totalScore <= 50) {
            riskText = "Low\nYou may be stressed,get some rest.";
          } else if (totalScore > 50 && totalScore <= 100) {
            riskText =
            "Medium\nDrink water regularly and observe personal good hygiene.\nPay attention to your health and redo test after two days.";
          } else {
            riskText =
            "High\nPlease see a doctor immediately.\nDo not panic,isolate yourself from friends and family.";
          }

          return Container(
            height: 100.0,
            child: AlertDialog(
              title: Text('Test Result'),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Your risk of having\n COVID 19 is $riskText'),
                ],
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('Restart'),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        QuestionCard(
          queImage: _questionList.getQueImage(),
          queText: _questionList.getQueText(),
          queScore: _questionList.getQueScore(),
          onBtnPressed: showNextQue,
        ),
      ],
    );
  }
}
