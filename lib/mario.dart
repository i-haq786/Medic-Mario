import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  const MyMario({super.key, required String direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Image.asset('lib/Images/standingMario.png'),
    );
  }
}
