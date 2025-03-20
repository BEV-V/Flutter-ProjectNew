import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  //variables

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //method

  void diceThrow() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text(
          'D i c e e',
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //left button

            Expanded(
              child: TextButton(
                onPressed: diceThrow,
                child: Image.asset('lib/image/dice$leftDiceNumber.png'),
                ),
              ),

            //right button

            Expanded(
              child: TextButton(
                onPressed: diceThrow,
                  child: Image.asset('lib/image/dice$rightDiceNumber.png'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
