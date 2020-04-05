import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selfcheckcovid19/models/Result.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({Key key, @required this.userResult}) : super(key: key);

  final Result userResult;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 10.0,
      title: Text(
        'Result',
        style:
        GoogleFonts.righteous(fontSize: 20.0, color: userResult.riskColor),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Your risk of having COVID 19 is'),
            Text(
              userResult.riskText,
              style: GoogleFonts.righteous(
                fontSize: 45.0,
                color: userResult.riskColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Divider(
              height: 10.0,
              thickness: 5.0,
              color: userResult.riskColor,
            ),
            Text(userResult.suggestionText),
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
