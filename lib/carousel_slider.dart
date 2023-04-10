import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int index = 0;
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Title of App
      title: 'Shayan',
      darkTheme: ThemeData.dark(),

      //First Screen of Slider App
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App Slider"),
        ),
        body: ListView(
          children: [
            CarouselSlider(
                items: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/Tomb of Cyrus.webp'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/perspolis.webp'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3)),
                    height: 300,
                    width: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/hafez.webp'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3)),
                    height: 300,
                    width: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/kashan.webp'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3)),
                    height: 300,
                    width: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/saadi.png'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3)),
                    height: 300,
                    width: 200,
                  ),
                ],
                options: CarouselOptions(
                    autoPlay: true,
                    height: 350,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(seconds: 3)))
          ],
        ));
  }
}
