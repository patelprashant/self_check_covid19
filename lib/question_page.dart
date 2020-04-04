import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/data/QuestionList.dart';
import 'package:selfcheckcovid19/data/ResultSet.dart';
import 'package:selfcheckcovid19/models/Result.dart';
import 'package:selfcheckcovid19/widgets/question_card.dart';
import 'package:selfcheckcovid19/widgets/result_dialog.dart';

QuestionList _questionList = new QuestionList();
ResultSet _resultSet = new ResultSet();

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
    Result userResult;
    if (totalScore <= 5) {
      userResult = _resultSet.getResultNone();
    } else if (totalScore <= 50) {
      userResult = _resultSet.getResultLow();
    } else if (totalScore > 50 && totalScore <= 100) {
      userResult = _resultSet.getResultMed();
    } else {
      userResult = _resultSet.getResultHigh();
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ResultDialog(userResult: userResult);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        QuestionCard(
          currentQue: _questionList.getCurrentQue(),
          onBtnPressed: showNextQue,
        ),
      ],
    );
  }
}
