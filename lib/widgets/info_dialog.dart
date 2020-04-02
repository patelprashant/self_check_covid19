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
              'on WHO guidelines. It is not a diagnostic tool.',
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
