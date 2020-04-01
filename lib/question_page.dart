import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/widgets/result_dialog.dart';

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
    String riskText;
    String suggestionText;
    var riskColor;
    if (totalScore <= 5) {
      riskText = "None";
      riskColor = Colors.green.shade900;
      suggestionText = "You may be stressed,get some rest.";
    } else if (totalScore <= 50) {
      riskText = "Low";
      riskColor = Colors.lightGreenAccent.shade700;
      suggestionText = "You may be stressed,get some rest.";
    } else if (totalScore > 50 && totalScore <= 100) {
      riskText = "Medium";
      riskColor = Colors.orange;
      suggestionText =
      "Drink water regularly and observe personal good hygiene."
          "\nPay attention to your health and redo test after two days.";
    } else {
      riskText = "High";
      riskColor = Colors.red.shade900;
      suggestionText = "Please see a doctor immediately."
          "\nDo not panic, isolate yourself from friends and family.";
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ResultDialog(
              riskText: riskText,
              riskColor: riskColor,
              suggestionText: suggestionText);
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
