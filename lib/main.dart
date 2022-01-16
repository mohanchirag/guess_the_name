import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Homepage(),
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  int counter = 1;
  int score = 0;

  List<String> playernNames = [
    'M.S. Dhoni',
    'Chris Gayle',
    'Virendra Sehwag',
    'Virat Kholi',
    'Sachin Tendulkar'
  ];

  void checkAnswer(String player) {
    if (player == playernNames[counter])
      score++;
    else
      score--;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/picture$counter.png'),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Your Score : $score',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    checkAnswer(playernNames[counter]);
                  },
                  child: Text(
                    playernNames[counter],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    playernNames[counter],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    playernNames[counter],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    playernNames[counter],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
