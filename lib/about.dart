// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agioh_app/getdrawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: getdrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "𝘼𝙗𝙤𝙪𝙩",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/back ground.1.3.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  left: 40,
                  right: 40,
                ),
                child: Text(
                  "If you have problems or suggestions, we are happy to contact you...",
                  style: TextStyle(
                      fontSize: 27, color: Color.fromARGB(255, 23, 183, 189)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Text(
                        "Gmail: ",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Text(
                      "gengotsnogarp@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.amberAccent),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.amberAccent,
                thickness: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
