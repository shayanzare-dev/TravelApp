import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Geeks For Geeks"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.yellow,
          height: height / 2, //half of the height size
          width: width / 2, //half of the width size
        ),
      ),
    );
  }
}
