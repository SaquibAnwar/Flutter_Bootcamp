import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 25) {
      resultText = 'You are awesome!';
    } else if (resultScore < 25 && resultScore >= 20) {
      resultText = 'Pretty likeable!';
    } else if (resultScore < 20 && resultScore >= 15) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'Eh...';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
