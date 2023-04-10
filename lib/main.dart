// ignore_for_file: use_key_in_widget_constructors, camel_case_type, non_constant_identifier_names, unnecessary_const, camel_case_types, no_leading_underscores_for_local_identifiers, unused_import, unused_element
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Model/TravelModel.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:expandable_text/expandable_text.dart';
import 'dart:developer' as developer;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<splashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => app()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FlutterLogo(size: 100)),
    );
  }
}

class app extends StatefulWidget {
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 1;
  double imageSize = 55;
  log() => developer.log(travelList.length.toString(), name: "developerLog");
  log2() => developer.log("salam", name: "developerLog2", error: 12 / 1);

  @override
  void initState() {
    super.initState();
    // گزارش دادن در شروع برنامه
    log();
    log2();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 245, 239, 239),
        child: ListView(
          physics: const ScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/emaratShapoori.jpg"),
                        fit: BoxFit.cover)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 107, 104, 104),
                  child: FlutterLogo(size: 40),
                ),
                accountName: Text(
                  "Shayans App",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text("user@gmail.com")),
            ListTile(
              iconColor: Colors.purple,
              textColor: Colors.purple,
              leading: const Icon(Icons.home),
              title: const Text('Home',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.blue,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.blue,
              onTap: () {
                _navigatorpage(context);
              },
            ),
            ExpansionTile(
                iconColor: Colors.purple,
                textColor: Colors.purple,
                leading: const Icon(Icons.military_tech),
                title: const Text("Shayan",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    selectedColor: Colors.purple,
                    title: const Text("shayan1",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.pop(context);
                      AnimatedSnackBar.material(
                        'Nothing has been defined for this section yet',
                        type: AnimatedSnackBarType.info,
                        mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                        desktopSnackBarPosition:
                            DesktopSnackBarPosition.topRight,
                      ).show(context);
                    },
                  )
                ]),
            ListTile(
              selectedTileColor: Colors.purple,
              leading: const Icon(Icons.notifications_on),
              title: const Text('Notification',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.blue,
              onTap: () {
                Navigator.pop(context);
                AnimatedSnackBar.material(
                  'Nothing has been defined for this section yet',
                  type: AnimatedSnackBarType.info,
                  mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                  desktopSnackBarPosition: DesktopSnackBarPosition.topRight,
                ).show(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline_sharp),
              title: const Text('Favorite',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.pop(context);
                AnimatedSnackBar.material(
                  'Nothing has been defined for this section yet',
                  type: AnimatedSnackBarType.info,
                  mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                  desktopSnackBarPosition: DesktopSnackBarPosition.topRight,
                ).show(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_border),
              title: const Text('Save',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.pop(context);
                AnimatedSnackBar.material(
                  'Nothing has been defined for this section yet',
                  type: AnimatedSnackBarType.info,
                  mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                  desktopSnackBarPosition: DesktopSnackBarPosition.topRight,
                ).show(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Shared App',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.pop(context);
                AnimatedSnackBar.material(
                  'Nothing has been defined for this section yet',
                  type: AnimatedSnackBarType.info,
                  mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                  desktopSnackBarPosition: DesktopSnackBarPosition.topRight,
                ).show(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.pop(context);
                AnimatedSnackBar.material(
                  'Nothing has been defined for this section yet',
                  type: AnimatedSnackBarType.info,
                  mobileSnackBarPosition: MobileSnackBarPosition.bottom,
                  desktopSnackBarPosition: DesktopSnackBarPosition.topRight,
                ).show(context);
              },
            ),
            const AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'My Flutter App',
              applicationLegalese: '© 2023 Company',
              aboutBoxChildren: [
                ///Content goes here...
              ],
              child: Text('About app',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image - ButtonList and Icons
              SizedBox(
                width: double.infinity,
                height: size.height / 1.8,
                child: Stack(children: <Widget>[
                  // above image
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            travelList[_selectedIndex].image.toString(),
                          ),
                        )),
                  ),
                  // Head Icons
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(90, 255, 255, 255),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.menu,
                                ),
                                onPressed: () =>
                                    scaffoldKey.currentState!.openDrawer(),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(90, 255, 255, 255),
                            ),
                            child: LikeButton(
                              size: 45,
                              likeBuilder: (istapped) {
                                if (istapped) {
                                  return Icon(CupertinoIcons.heart_fill,
                                      color:
                                          istapped ? Colors.red : Colors.black);
                                }
                                if (!istapped) {
                                  return Icon(
                                    CupertinoIcons.heart,
                                    color: istapped
                                        ? Colors.deepPurple
                                        : Colors.black,
                                  );
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Button list
                  Positioned(
                    top: 70,
                    right: 10,
                    child: SizedBox(
                      width: 95,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return ItemImages(index);
                        },
                      ),
                    ),
                  ),
                  // name and place
                  Positioned(
                    bottom: 80,
                    left: size.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedIndex].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(CupertinoIcons.placemark_fill,
                                color: Colors.white),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              travelList[_selectedIndex].location.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // درجات
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                            side: const BorderSide(
                                color: Color.fromARGB(59, 48, 40, 40),
                                width: 1),
                          ),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Distance",
                                  ),
                                  Text(
                                    "${travelList[_selectedIndex].distance} KM ",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 120, 202, 222)),
                                  ),
                                ]),
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                            side: const BorderSide(
                                color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          ),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("Temp"),
                                  Text(
                                    "${travelList[_selectedIndex].temp}\u00b0 C ",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 120, 202, 222)),
                                  ),
                                ]),
                          ),
                        ),
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                            side: const BorderSide(
                                color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          ),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("Distance"),
                                  Text(
                                    "${travelList[_selectedIndex].distance}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 120, 202, 222)),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          ExpandableText(
                            travelList[_selectedIndex].description.toString(),
                            style: const TextStyle(fontSize: 14),
                            expandText: 'show more',
                            collapseText: "show Less",
                            maxLines: 2,
                          ),
                          const SizedBox(height: 20),
                          //  price and icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Total Price",
                                      style: TextStyle(color: Colors.grey)),
                                  Text(
                                      "\$${travelList[_selectedIndex].totalprice}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30))
                                ],
                              ),
                              TextButton(
                                onPressed: () => _navigatorpage(context),
                                child: Container(
                                  width: 85,
                                  height: 85,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                      CupertinoIcons.right_chevron,
                                      color: Colors.white,
                                      size: 27),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemImages(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: _selectedIndex == index
                          ? const Color.fromARGB(255, 196, 18, 18)
                          : Colors.white,
                      width: 3),
                  borderRadius: _selectedIndex == index
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(travelList[index].image.toString()),
                      fit: BoxFit.fitHeight)),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigatorpage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const BioScreen()));
}

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: const Center(
                child: Text(
              'Shayan zare',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Hello",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '''I am Shayan Zare. I am 17 years old and I live in Iran.\nI am very interested in programming and will become the owner of a big company in the future\nHope to meet ;)''',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Coming Back")),
        ],
      )),
    );
  }
}
