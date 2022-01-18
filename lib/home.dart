import 'package:flutter/material.dart';

import 'names.dart';
import 'resultpage.dart';

int imageNo = 1, score = 0;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  bool checkAnswer(String user_option, String correct_option) {
    if (user_option == correct_option) {
      return true;
    } else {
      return false;
    }
  }

  void updateScore(bool answer) {
    if (answer == true) {
      score++;
    } else {
      score--;
    }

    if (imageNo < options.length) {
      imageNo++;
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Result();
          },
        ),
        (route) => false,
      );
    }
  }

  TextButton playerButton(int user_option) {
    return TextButton(
      onPressed: () {
        print('Button $user_option is pressed');
        setState(() {
          updateScore(checkAnswer(
              options[imageNo - 1][user_option], options[imageNo - 1][4]));
        });
        print('$imageNo-1, $score');
      },
      child: Text(
        options[imageNo - 1][user_option],
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/picture$imageNo.png'),
          alignment: Alignment.center,
        ),
        const Text(
          'Your Score',
          style: TextStyle(
            fontSize: 25.0,
            backgroundColor: Colors.green,
          ),
        ),
        Text(
          '$score',
          style: const TextStyle(
            backgroundColor: Colors.green,
            fontSize: 30.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [playerButton(0), playerButton(1)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [playerButton(2), playerButton(3)],
        )
      ],
    );
  }
}
