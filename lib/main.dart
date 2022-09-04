import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// import 'dart:math';
// import 'package:flutter/material.dart';

// class MyMario extends StatelessWidget {
//   final direction;

//   MyMario({this.direction});

//   @override
//   Widget build(BuildContext context) {
//     if (direction == " right ") {
//       return Container(
//         width: 50,
//         height: 50,
//         child: Image.asset(' lib / images / standingMario.png '),
//       ); // Container I
//     } else {
//       return Transform(
//         alignment: Alignment.center,
//         transform: Matrix4.rotationY(pi),
//         child: Container(
//           width: 50,
//           height: 50,
//           child: Image.asset(' lib / images / standingMario.png '),
//         ),
//       );
//     }
//   }
// }
