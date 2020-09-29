import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;

  Result({this.result, this.reset});

  String get message {
    return result < 10 ? "Try later" : "You did it!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$message\nFinal result: $result",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
          ),
          RaisedButton(child: Text("Reset"), onPressed: reset,)
        ],
      )
    );
  }
}
