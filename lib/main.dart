import 'package:app/widgets/quiz.dart';
import 'package:app/widgets/result.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Super Quiz App",
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: HomePage(
          title: "Home Page",
        ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var questions = const [
    {
      'question': "Whats your favorite Music",
      "answers": [
        {"text": "Rock", "score": 10},
        {"text": "Regge", "score": 0},
        {"text": "Salsa", "score": 0}
      ]
    },
    {
      'question': "Whats your favorite Food",
      "answers": [
        {"text": "Pizza", "score": 0},
        {"text": "Pupusas", "score": 10}
      ]
    },
  ];
  var _totalScore = 0;
  var _index = 0;

  _onPress(int score) {
    setState(() {
      _totalScore += score;
      _index++;
    });
  }

  _reset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _index < questions.length
            ? Quiz(questions: questions, index: _index, onPress: _onPress)
            : Result(
                result: _totalScore,
                reset: _reset,
              ),
      ),
    );
  }
}
