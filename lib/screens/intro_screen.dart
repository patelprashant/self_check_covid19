import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:selfcheckcovid19/screens/my_home_page_screen.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'intro_screen';

  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "It is normal to feel sad, stressed, confused, scared or angry during "
            "crisis.\n\nTalking to people you trust can help. Contact your "
            "friends and family.",
        pathImage: 'assets/images/intro_01.webp',
        backgroundColor: Colors.lightBlueAccent.shade700,
      ),
    );
    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "If you must stay at home, maintain a healthy lifestyle - including "
            "proper diet, sleep, exercise and social contacts with loved ones "
            "at home and by email and phone with other family and friends.",
        backgroundColor: Colors.lightGreen.shade800,
        pathImage: 'assets/images/intro_02.webp',
      ),
    );
    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "Don\'t use smoking, alcohol or other drugs to deal with your "
            "emotions.\n If you feel overwhelmed, talk to a health worker or"
            " counsellor. Have a plan, where to go to and how to seek help "
            "for physical and mental health needs if required.",
        backgroundColor: Colors.lightBlueAccent.shade400,
        pathImage: 'assets/images/intro_03.webp',
      ),
    );
    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "Get the facts. Gather information that will help you accurately "
            "determine your risk so that you can take reasonable precatutions. "
            "Find a credible source you can trust such as WHO website or, "
            "a local or state public health agency.",
        backgroundColor: Colors.lightGreen.shade700,
        pathImage: 'assets/images/intro_04.webp',
      ),
    );
    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "Limit worry and agitation by lessening the time you and your family"
            " spend watching or listening to media coverage that you perceive as "
            "upsetting.",
        backgroundColor: Colors.lightBlueAccent.shade200,
        pathImage: 'assets/images/intro_05.webp',
      ),
    );
    slides.add(
      new Slide(
        title: "Coping with COVID-19",
        description:
            "Draw on skills you have used in the past that have helped you to"
            " manage previous life\'s adversities and use those skills to "
            "help you manage your emotions during the challenging time of "
            "this outbreak",
        backgroundColor: Colors.lightGreen.shade600,
        pathImage: 'assets/images/intro_06.webp',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, MyHomePage.id);
  }
}
