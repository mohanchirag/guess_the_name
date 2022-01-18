import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guess_the_name/names.dart';

import 'home.dart';

class Result extends StatelessWidget {
  String result(int score) {
    if (score > (options.length / 2))
      return 'CONGRATULATION';
    else
      return 'Better Luck Next Time!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Guess The Player',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: MaterialApp(
        home: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Text(
                  result(score),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade600,
                  ),
                ),
              ),
              Expanded(
                  child: Text(
                'Your Final Score : $score',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.yellow,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
