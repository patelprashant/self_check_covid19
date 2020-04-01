import 'package:selfcheckcovid19/models/Question.dart';

class QuestionList {
  int _queNum = 0;

  List<Question> _questionBank = [
    Question('Do you have cough?', '01.webp', 5),
    Question('Do you have a cold??', '02.webp', 5),
    Question('Are you having Diarrhea?', '03.webp', 5),
    Question('Are you having a headache?', '06.webp', 5),
    Question('Are you having sorethroat?', '04.webp', 10),
    Question('Are you having body aches?', '05.webp', 10),
    Question(
        'Do you have fever\n(Temperature 37.8°C and above)', '07.webp', 15),
    Question('Are you having\ndifficulty breathing?', '08.webp', 15),
    Question('Are you experiencing\nfatigue?', '09.webp', 15),
    Question(
        'Have you traveled recently\nduring the past 14 days?', '10.webp', 51),
    Question('Do you have a travel\nhistory of COVID-19\nINFECTED AREA?',
        '11.webp', 101),
    Question(
        'Do you have direct contact\nwith or are you taking care of\na positive COVID-19 PATIENT?',
        '12.webp',
        101),
  ];

  void nextQue() {
    if (!isFinished()) {
      _queNum++;
    } else {
      resetQue();
    }
  }

  bool isFinished() => _queNum >= _questionBank.length - 1;

  void resetQue() {
    _queNum = 0;
  }

  String getQueText() {
    return _questionBank[_queNum].queText;
  }

  String getQueImage() {
    return 'assets/images/' + _questionBank[_queNum].queImage;
  }

  int getQueScore() {
    return _questionBank[_queNum].queScore;
  }
}
