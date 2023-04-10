// ignore_for_file: unused_import

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("expandebel card")),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: SizedBox(
              height: 300,
              child: TextButton(
                  onPressed: () {
                    // ScrollOnExpand(
                    //     scrollOnCollapse: true,
                    //     scrollOnExpand: true,
                    //     child: Column(
                    //       children: const [Text("ddddddddddddd")],
                    //     ));
                  },
                  child: Container(
                    color: Colors.red,
                    height: 50,
                    width: 100,
                    child: const Center(child: Text("show card")),
                  ))),
        )));
  }
}


/*


collapsed: Column(children: [
                    Image.asset('assets/images/saadi.png'),
                  ]),
                  expanded: Text("sss")


                   */