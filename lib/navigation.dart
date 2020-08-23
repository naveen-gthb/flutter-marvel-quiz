import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final questionIndex;
  Navigation(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: questionIndex == 0 ? 40 : 20,
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor:
                  questionIndex > 0 ? Colors.purple : Colors.purple[100],
              mini: questionIndex == 0 ? false : true,
            ),
          ),
          Container(
            height: questionIndex == 1 ? 40 : 20,
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor:
                  questionIndex > 1 ? Colors.purple : Colors.purple[100],
              mini: questionIndex == 1 ? false : true,
            ),
          ),
          Container(
            height: questionIndex == 2 ? 40 : 20,
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor:
                  questionIndex > 2 ? Colors.purple : Colors.purple[100],
              mini: questionIndex == 2 ? false : true,
            ),
          ),
          Container(
            height: questionIndex == 3 ? 40 : 20,
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor:
                  questionIndex > 3 ? Colors.purple : Colors.purple[100],
              mini: questionIndex == 3 ? false : true,
            ),
          ),
          Container(
            height: questionIndex == 4 ? 40 : 20,
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor:
                  questionIndex > 4 ? Colors.purple : Colors.purple[100],
              mini: questionIndex == 4 ? false : true,
            ),
          ),
        ],
      ),
    );
  }
}
