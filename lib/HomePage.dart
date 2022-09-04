import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medic_mario/element1.dart';
import 'package:medic_mario/mario.dart';
import 'button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double marioX = -0.7;
  static double marioY = 1.02;
  double time = 0;
  double height = 0;
  double initialHeight = marioY;
  static String direction = "right";

  void preJump() {
    time = 0;
    initialHeight = marioY;
  }

  void jump() {
    preJump();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;

      if (initialHeight - height > 1) {
        setState(() {
          marioY = 1;
        });
      } else {
        setState(() {
          marioY = initialHeight - height;
        });
      }
    });
  }

  void moveRight() {
    direction = "right";
    setState(() {
      marioX += 0.02;
    });
  }

  void moveLeft() {
    direction = "left";
    setState(() {
      marioX -= 0.02;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Color.fromARGB(255, 9, 193, 218),
              child: AnimatedContainer(
                alignment: Alignment(marioX, marioY),
                duration: Duration(milliseconds: 0),
                child: MyMario(
                  direction: direction,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 48, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    child: Icon(Icons.arrow_back),
                    function: moveLeft,
                  ),
                  MyButton(
                    child: Icon(Icons.arrow_upward),
                    function: jump,
                  ),
                  MyButton(
                    child: Icon(Icons.arrow_forward),
                    function: moveRight,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
