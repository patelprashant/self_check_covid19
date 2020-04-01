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
        _questionList.resetQue();
        totalScore = 0;
        print('All Answered');
      } else {
        _questionList.nextQue();
        totalScore += userScore;
        print('Total score $totalScore');
      }
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
