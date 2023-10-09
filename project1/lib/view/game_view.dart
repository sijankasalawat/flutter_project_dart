import 'dart:math';

import 'package:flutter/material.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  int initValue1 = 0;
  int initValue2 = 0;
  int score = 0;
  int counter = 0;
  int maxAttemp = 10;

  void GameView() {
    setState(() {
      initValue1 = Random().nextInt(100);
      initValue2 = Random().nextInt(100);
    });
  }

  void resetValue() {
    setState(() {
      // initValue1 = 0;
      // initValue2 = 0;
      counter = 0;
      score = 0;
    });
  }

  void compareNumbers(bool isGreater) {
    if ((initValue1 > initValue2 && isGreater) ||
        (initValue2 > initValue1 && !isGreater)) {
      setState(() {
        score++;
      });
    }
    setState(() {
      counter++;
    });
    if (counter >= maxAttemp) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              (score == 10) ? ' Khatra' : 'tait ',
              style: const TextStyle(fontSize: 20),
            ),
            content: Text("Your Score: $score out of $maxAttemp"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  resetValue();
                },
                child: const Text("Play Again"),
              ),
            ],
          );
        },
      );
    } else {
      GameView();
    }
  }

  @override
  void initState() {
    GameView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    compareNumbers(true);
                  },
                  child: Text("$initValue1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    compareNumbers(false);
                  },
                  child: Text("$initValue2"),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Score: $score / $maxAttemp")],
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Total Click: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$counter',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          resetValue();
                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
