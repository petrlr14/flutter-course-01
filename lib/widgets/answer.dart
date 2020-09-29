import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPress;
  final String text;
  Answer(this._onPress, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: RaisedButton(
            child: Text(text),
            onPressed: _onPress
        )
    );
  }
}
