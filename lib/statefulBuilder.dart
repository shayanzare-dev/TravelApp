import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  String label = 'Hello';
  String label2 = 'Hello';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('shayan')),
        ),
        body: Center(child: StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'data',
                        style: TextStyle(fontSize: 50),
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
                Text(label),
                const SizedBox(
                  height: 2,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        label = 'Hello Shayan';
                      });
                    },
                    child: const Text('changeText')),
                const SizedBox(
                  height: 2,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        label = 'Hello arman';
                      });
                    },
                    child: const Text('changeText')),
              ],
            );
          },
        )),
      ),
    );
  }
}
