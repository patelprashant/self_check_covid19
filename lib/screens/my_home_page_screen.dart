import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/question_page.dart';
import 'package:selfcheckcovid19/widgets/info_dialog.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'welcome_screen';

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: Icon(
                Icons.info,
                size: 24.0,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return InfoDialog();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: QuestionPage(),
        ),
      ),
    );
  }
}
