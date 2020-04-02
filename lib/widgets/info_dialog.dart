import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('App Information'),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'This is a COVID-19 self assessment tool that was calibrated based '
                  'on WHO guidelines. It is not a diagnostic tool. If you are sick & '
                  'think you have symptoms, book an appointment to seek medical advice. '
                  'The doctor will tell you if you should be tested. They will arrange for a test if needed.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}
