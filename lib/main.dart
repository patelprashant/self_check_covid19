import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/common/constants.dart';
import 'package:selfcheckcovid19/screens/intro_screen.dart';
import 'package:selfcheckcovid19/screens/my_home_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        MyHomePage.id: (context) => MyHomePage(title: APP_TITLE),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
