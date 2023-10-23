import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                // qui c'è quello che viene chiamato quando si preme il bottone
                setState(() {
                  leftDieNumber = Random().nextInt(6)+1;
                  rightDieNumber = Random().nextInt(6)+1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftDieNumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //print('Right button got pressed');
                  setState(() {
                    leftDieNumber = Random().nextInt(6)+1;
                    rightDieNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDieNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
