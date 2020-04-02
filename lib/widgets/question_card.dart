import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/common/constants.dart';
import 'package:selfcheckcovid19/models/Question.dart';

class QuestionCard extends StatelessWidget {
  final Question currentQue;

  final Function(int queScore) onBtnPressed;

  const QuestionCard({this.currentQue, this.onBtnPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.0,
      child: Card(
        elevation: 5.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        currentQue.queText,
                        style: QUESTION_TEXT_FONT_STYLE,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Image.asset(
                      'assets/images/' + currentQue.queImage,
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.center,
                      cacheHeight: 128,
                    ),
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      ACTION_LABEL_YES,
                      style: ACTION_LABEL_FONT_STYLE,
                    ),
                    onPressed: () {
                      onBtnPressed(currentQue.queScore);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      ACTION_LABEL_NO,
                      style: ACTION_LABEL_FONT_STYLE,
                    ),
                    onPressed: () {
                      onBtnPressed(0);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
