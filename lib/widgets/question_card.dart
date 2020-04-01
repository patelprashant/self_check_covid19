import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionCard extends StatelessWidget {
  final String queImage;
  final String queText;
  final int queScore;

  final Function(int queScore) onBtnPressed;

  const QuestionCard(
      {this.queImage, this.queText, this.queScore, this.onBtnPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.0,
      child: Card(
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
                    Image.asset(
                      queImage,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        queText,
                        style: GoogleFonts.righteous(fontSize: 35.0),
                      ),
                    ),
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'YES',
                      style: GoogleFonts.righteous(fontSize: 25.0),
                    ),
                    onPressed: () {
                      onBtnPressed(queScore);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'NO',
                      style: GoogleFonts.righteous(fontSize: 25.0),
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
