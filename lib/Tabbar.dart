// ignore_for_file: unused_import, unused_field, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(name());
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: App());
  }
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late TabController _tabcontroler;
  @override
  void initState() {
    _tabcontroler = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Discover",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(0, 52, 6, 6),
                fontSize: 25),
          ),
          actions: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 158, 158, 158),
              ),
              child: const Icon(
                CupertinoIcons.bell,
                size: 15,
              ),
            ),
            const SizedBox(
              //   width: Checkbox.width,
              width: 15,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 158, 158, 158),
              ),
              child: const Icon(
                CupertinoIcons.search,
                size: 15,
              ),
            ),
            const SizedBox(width: 15)
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: const [
              Text("Shiraz"),
              Text("Kashan"),
              Text("Tehran"),
              Text("Esfahan"),
            ],
            controller: _tabcontroler,
          )),
    );
  }
}

/*
Text(
                    'Discover',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

*/
          /* 
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoverList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 70, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            child: Text(discoverList[index].name.toString()),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          
           */