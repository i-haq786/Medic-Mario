import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //const MyButton({super.key});
  final child;
  final function;

  const MyButton({this.child, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(16),
          color: Color.fromARGB(255, 250, 149, 6),
          child: child,
        ),
      ),
    );
  }
}
