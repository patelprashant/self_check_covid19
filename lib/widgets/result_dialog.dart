import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({
    Key key,
    @required this.riskText,
    @required this.riskColor,
    @required this.suggestionText,
  }) : super(key: key);

  final String riskText;
  final riskColor;
  final String suggestionText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 10.0,
      title: Text(
        'Result',
        style: GoogleFonts.righteous(fontSize: 20.0, color: riskColor),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Your risk of having COVID 19 is'),
            Text(
              riskText,
              style: GoogleFonts.righteous(
                fontSize: 45.0,
                color: riskColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(suggestionText),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Restart'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}
