import 'package:flutter/material.dart';

class Option2 extends StatelessWidget {
  final String option;
  final Function checkAnswer;
  Option2(this.option, this.checkAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
      child: RaisedButton(
        onPressed: checkAnswer,
        child: Text(option),
        color: Colors.purple[50],
      ),
    );
  }
}
