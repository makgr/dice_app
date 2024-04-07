import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftdice = 1;
  int rightdice = 3;

  void changeDice() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 156, 119, 221),
      appBar: AppBar(
        title: const Text(
          'Dice App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: changeDice,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/dice$leftdice.png'),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: changeDice,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/dice$rightdice.png'),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
