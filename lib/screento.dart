// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:agioh_app/main.dart';
import 'package:flutter/material.dart';

class screento extends StatefulWidget {
  const screento({Key? key}) : super(key: key);

  @override
  State<screento> createState() => _screentoState();
}

class _screentoState extends State<screento> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => testProje()),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/back ground1.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 60, left: 60, right: 60, bottom: 10),
                child: Center(
                  child: Image.asset(
                    "images/ero.2.png",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Welcome to           Game  House",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 52,
                      color: Colors.amberAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
