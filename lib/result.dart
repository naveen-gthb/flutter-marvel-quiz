import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final marks;
  final Function resetQuiz;
  Result(this.marks, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text("Your score:",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text("$marks/5",
              style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.w600,
                  color: marks >= 3 ? Colors.green[400] : Colors.red[400])),
        ),
        Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(left: 70, right: 70, top: 250),
          child: RaisedButton.icon(
            onPressed: resetQuiz,
            icon: Icon(Icons.restore),
            label: Text(
              "Reset Quiz",
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.purple[50],
          ),
        )
      ],
    );
  }
}
