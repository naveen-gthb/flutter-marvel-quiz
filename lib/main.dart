import 'package:flutter/material.dart';
import './quiz.dart';
import './navigation.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int marks = 0;
  var questionIndex = 0;
  bool selection;

  final Color darkBlue = Colors.black;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      marks = 0;
    });
  }

  void checkOption1() {
    setState(() {
      if (answers[questionIndex][0]) {
        marks++;
      }
      questionIndex++;
    });
  }

  void checkOption2() {
    setState(() {
      if (answers[questionIndex][1]) {
        marks++;
      }
      questionIndex++;
    });
  }

  void checkOption3() {
    setState(() {
      if (answers[questionIndex][2]) {
        marks++;
      }
      questionIndex++;
    });
  }

  void checkOption4() {
    setState(() {
      if (answers[questionIndex][3]) {
        marks++;
      }
      questionIndex++;
    });
  }

  List questions = [
    "Who is the leader of S.H.I.E.L.D ?",
    "What's the name of the myterious blue glowing cube that Loki uses as a weapon?",
    "Which US city do the Avengers battle the Chitauri?",
    "What weapon does Thor carry?",
    "What is Clint Barton's superhero name?",
  ];
  List options = [
    ["Nick Fury", "Tony Stark", "Bruce Banner", "Diana Prince"],
    ["The Orb", "Tesseract", "The Force", "UV Lamp"],
    ["Los Angeles", "New York City", "Washington, DC", "Miami"],
    ["A bow and arrow", "A catapult", "A hammer", "A sword"],
    ["Black Panther", "Thor", "Iron Man", "Hawkeye"],
  ];

  List answers = [
    [true, false, false, false],
    [false, true, false, false],
    [false, true, false, false],
    [false, false, true, false],
    [false, false, false, true]
  ];

  @override
  Widget build(BuildContext contect) {
    return MaterialApp(
      title: "Marvel Quiz",
      //theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: Scaffold(
        bottomNavigationBar: questionIndex < 5
            ? Container(
                child: Navigation(questionIndex),
                margin: EdgeInsets.only(bottom: 40),
              )
            : null,
        appBar: AppBar(
          title: Text("Quizzz"),
          backgroundColor: Colors.purple,
        ),
        body: questionIndex < questions.length
            ? Quiz(questions[questionIndex], options[questionIndex],
                checkOption1, checkOption2, checkOption3, checkOption4)
            : Result(marks, resetQuiz),
      ),
    );
  }
}
