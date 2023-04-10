// importing dependencies
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// function to trigger the build process
void main() => runApp(const MyApp());

_launchURLBrowser() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Geeks for Geeks'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                const Text(
                  'Welcome to GFG!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLBrowser,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  // textColor: Colors.black,
                  // padding: const EdgeInsets.all(5.0),
                  child: const Text('Open in Browser'),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    ElevatedButton.styleFrom(maximumSize: Size(450, 250));
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(minimumSize: Size(150, 150)),
                  //   ButtonStyle(
                  //       padding:
                  //           MaterialStateProperty.all(const EdgeInsets.all(5)),
                  //       textStyle: MaterialStateProperty.all(
                  //           const TextStyle(color: Colors.black)),
                  //   // textColor: Colors.black,
                  //   // padding: const EdgeInsets.all(5.0),
                  //   child: const Text('Open in App'),
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
