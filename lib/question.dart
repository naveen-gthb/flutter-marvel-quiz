import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(top: 30, left: 40, right: 40, bottom: 10),
      alignment: Alignment.center,
      child: Text(
        question,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
      ),
    );
  }
}
