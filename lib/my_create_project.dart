// ignore_for_file: sort_child_properties_last, library_private_types_in_public_api, use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Model/TravelModel.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  Future<void> read_more() async {
    const url = "https://en.wikipedia.org/wiki/Persepolis";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int _selectedindex = 0;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 2.1,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                  image: DecorationImage(
                      image: AssetImage(travelList[1].image.toString()),
                      fit: BoxFit.fill)),
            ),
            // Head icons
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(118, 255, 255, 255)),
                        child: LikeButton(
                          size: 40,
                          likeBuilder: (istapped) {
                            if (istapped) {
                              return Icon(CupertinoIcons.bookmark_solid,
                                  color: istapped ? Colors.red : Colors.black);
                            }
                            if (!istapped) {
                              return Icon(
                                CupertinoIcons.bookmark,
                                color:
                                    istapped ? Colors.deepPurple : Colors.black,
                              );
                            }
                          },
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(118, 255, 255, 255),
                        ),
                        child: LikeButton(
                          size: 40,
                          likeBuilder: (istapped) {
                            if (istapped) {
                              return Icon(CupertinoIcons.heart_solid,
                                  color: istapped ? Colors.red : Colors.black);
                            }
                            if (!istapped) {
                              return Icon(
                                CupertinoIcons.heart,
                                color:
                                    istapped ? Colors.deepPurple : Colors.black,
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )),

            ListView.builder(
              itemCount: travelList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        AnimatedContainer(
                          width: size.width / 8,
                          height: size.width / 8,
                          duration: const Duration(milliseconds: 700),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage(
                                    travelList[index].image.toString()),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 0, 0, 130),
                  child: Text(
                    'Persepolis',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(51, 0, 0, 75),
                  child: Container(
                    child: Row(
                      children: const [
                        Icon(
                          CupertinoIcons.location_solid,
                          color: Colors.white,
                          size: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2.0, 0, 0, 0),
                          child: Text(
                            'iran , fars , Marvdasht',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 170, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            border: Border.all(color: Colors.grey),
                          ),
                          // padding: const EdgeInsets.fromLTRB(16, 18, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('Distance',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black)
                                  // Theme.of(context).textTheme.headline1,
                                  ),
                              Text('6KM',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.lightBlueAccent))
                            ],
                          )),
                      Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            border: Border.all(color: Colors.grey),
                          ),
                          // padding: const EdgeInsets.fromLTRB(22, 18, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('Temp',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black)
                                  // Theme.of(context).textTheme.headline1,
                                  ),
                              Text('32° C',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.lightBlueAccent))
                            ],
                          )),
                      Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            border: Border.all(color: Colors.grey),
                          ),
                          // padding: const EdgeInsets.fromLTRB(22, 18, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('Rating',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black)
                                  // Theme.of(context).textTheme.headline1,
                                  ),
                              Text('4.8',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.lightBlueAccent))
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(60, 300, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppinss',
                        fontWeight: FontWeight.w500),
                  ),
                )),
            // ignore: prefer_const_constructors
            Padding(
                padding: const EdgeInsets.fromLTRB(60, 380, 0, 0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      '''This Is The Shortest Of The Three Routes , But Certainly Not Any
Less Interesting . The North Wales Way Leads You In 120 Km From 
Abergwyngregyn To The Beautiful Island Of Anglesey... ''',
                      softWrap: true,
                      style: TextStyle(fontSize: 11, height: 1.6)),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 90),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => read_more(),
                    child: const Text(
                      'Read More',
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(60, 510, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Total Price',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppinss',
                        color: Colors.grey,
                        fontWeight: FontWeight.w100),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(60, 575, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\$1270',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppinss',
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Center(
                      child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                    ),
                    color: Colors.white,
                  )),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // theme:
    // ThemeData(
    //     fontFamily: 'Poppins',
    //     textTheme: const TextTheme(
    //       headline1: TextStyle(
    //           color: Color.fromARGB(255, 218, 218, 218), fontSize: 20),
    //       headline2: TextStyle(
    //         fontSize: 20,
    //         color: Color.fromARGB(255, 218, 218, 218),
    //       ),
    //     ));
  }
}
