import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const GuessApp());
}

class GuessApp extends StatefulWidget {
  const GuessApp({Key? key}) : super(key: key);

  @override
  _GuessAppState createState() => _GuessAppState();
}

class _GuessAppState extends State<GuessApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Homepage(),
          ),
        ),
      ),
    );
  }
}
