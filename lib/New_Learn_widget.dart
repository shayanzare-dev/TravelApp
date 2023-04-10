// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: app(),
  ));
} // به دلیل استفاده از مدیا کوئری یک ویجت متریال اپ ایجاد می کنیم و در پارامتر هوم , کلاس اپ رو پاس میدیم که مدیا کوئری کار کند

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: app(),
//     );
//   }
// }
class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size_width = MediaQuery.of(context).size.height;
    var size_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          color: Colors.blue,
          width: size_width / 10,
          height: size_height / 10,
        ),
        Positioned(
          top: 160,
          right: 20,
          child: Container(
            color: Colors.red,
            width: size_width / 10,
            height: size_height / 10,
          ),
        ),
        Positioned(
          top: 240,
          right: 20,
          child: Container(
            color: Colors.blueGrey,
            width: size_width / 10,
            height: size_height / 10,
          ),
        ),
        Positioned(
          top: 320,
          right: 20,
          child: Container(
            color: Colors.yellowAccent,
            width: size_width / 10,
            height: size_height / 10,
          ),
        ),
      ]),
    );
  }
}
