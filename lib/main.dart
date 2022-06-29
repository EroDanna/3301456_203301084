// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agioh_app/Auth/login.dart';
import 'package:agioh_app/api/News.dart';
import 'package:agioh_app/game%20page.dart';
import 'package:agioh_app/getdrawer.dart';
import 'package:agioh_app/profile.dart';
import 'package:firebase_core/firebase_core.dart';

import '''
package:flutter/material.dart''';

import 'games detailes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: testProje());
  }
}

class testProje extends StatefulWidget {
  @override
  State<testProje> createState() => _testProjeState();
}

class _testProjeState extends State<testProje> {
  @override
  int selectedindex = 0;
  void getIndex(int a) {
    setState(
      () {
        selectedindex = a;
      },
    );
  }

  var s2 = [
    {
      'getScreen': gamepage(),
      'appBar': '𝐻𝑜𝓂𝑒 𝒫𝒶𝑔𝑒',
    },
    {
      'getScreen': News(),
      'appBar': '𝘕𝘦𝘸𝘴',
    },
    {
      'getScreen': Profile(),
      'appBar': '𝙥𝙧𝙤𝙛𝙞𝙡𝙚',
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${s2[selectedindex]["appBar"]}',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            selectedItemColor: Color.fromARGB(255, 208, 211, 27),
            unselectedItemColor: Color.fromARGB(121, 156, 154, 154),
            selectedLabelStyle: TextStyle(fontSize: 18.4),
            iconSize: 31,
            currentIndex: selectedindex,
            onTap: getIndex,
            items: [
              BottomNavigationBarItem(
                label: "Home Page",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "News",
                icon: Icon(Icons.feed),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.account_circle,
                ),
              ),
            ]),
        drawerScrimColor: Colors.black.withOpacity(0),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: getdrawer(),
        ),
        body: s2[selectedindex]["getScreen"] as Widget);
  }
}
