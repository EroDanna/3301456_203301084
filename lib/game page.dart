// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member, camel_case_types

import 'dart:ui';

import 'package:agioh_app/dataInf.dart';
import 'package:agioh_app/games%20detailes.dart';
import 'package:flutter/material.dart';

class gamepage extends StatefulWidget {
  gamepage({Key? key}) : super(key: key);

  @override
  State<gamepage> createState() => _gamepageState();
}

class _gamepageState extends State<gamepage> {
  @override
  int selectedindex = 0;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back ground2.png'),
                fit: BoxFit.cover),
          ),
        ),
        ListView(
          physics: BouncingScrollPhysics(),
          children: [
            getContainer(
                'images/genshin.1.png',
                'Genshin',
                Gamesdetails(
                  id: getInf[0]['id'],
                )),
            getContainer(
              "images/league of legend.1.png",
              "League of legend",
              Gamesdetails(
                id: getInf[1]['id'],
              ),
            ),
            getContainer(
              "images/red dead redemption2.1.png",
              "Red dead redemption 2",
              Gamesdetails(
                id: getInf[2]["id"],
              ),
            ),
            getContainer(
              "images/rocket league.111.jpg",
              "Rocket league",
              Gamesdetails(
                id: getInf[3]["id"],
              ),
            ),
            getContainer(
              "images/sea of thieves.1.png",
              "Sea of thieves",
              Gamesdetails(
                id: getInf[4]["id"],
              ),
            ),
            getContainer(
              "images/titan fall2.1.png",
              "Titan fall 2",
              Gamesdetails(
                id: getInf[5]["id"],
              ),
            ),
          ],
        ),
      ],
    );
  }

  getContainer(String Url, String gameName, dynamic getScreen) {
    return Container(
      margin: EdgeInsets.only(top: 45, left: 70, right: 70),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 66, 76, 75).withOpacity(.5),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: InkWell(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => getScreen,
            ),
          );
        }),
        child: Column(
          children: [
            SizedBox(
              height: 160,
              width: 350,
              child: Image.asset(
                Url,
              ),
            ),
            Text(
              gameName,
              style: TextStyle(fontSize: 29, color: Colors.white),
            ),
            ListTile(
              title: Transform.translate(
                offset: Offset(105, 0),
                child: Text(
                  'learn more',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              trailing: Transform.translate(
                offset: Offset(-15, 2),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
