import 'package:flutter/material.dart';
import './question.dart';
import './option1.dart';
import './option2.dart';
import './option3.dart';
import './option4.dart';

class Quiz extends StatelessWidget {
  final String questions;
  final List options;
  final Function checkOption1, checkOption2, checkOption3, checkOption4;
  Quiz(this.questions, this.options, this.checkOption1, this.checkOption2,
      this.checkOption3, this.checkOption4);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions),
        Option1(options[0], checkOption1),
        Option2(options[1], checkOption2),
        Option3(options[2], checkOption3),
        Option4(options[3], checkOption4),
      ],
    );
  }
}
