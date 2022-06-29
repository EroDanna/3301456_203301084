// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types
import 'package:agioh_app/dataInf.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'G comment.dart';

class Gamesdetails extends StatelessWidget {
  var id;

  Gamesdetails({this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "${getInf[id]['name']}",
            style: TextStyle(fontSize: 26),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Gcomment(),
                ),
              );
            },
            icon: Icon(
              Icons.message,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 23, 24, 24),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back ground.4.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          listinf(
            developer: getInf[id]["developer"],
            genre: getInf[id]["genre"],
            connectivity: getInf[id]["connectivity"],
            award1: getInf[id]["award1"],
            award2: getInf[id]["award2"],
            yurl1: getInf[id]["yurl1"],
            yname1: getInf[id]["yname1"],
            yurl2: getInf[id]["yurl2"],
            yname2: getInf[id]["yname2"],
            turl1: getInf[id]["turl1"],
            tname1: getInf[id]["tname1"],
            turl2: getInf[id]["turl2"],
            tname2: getInf[id]["tname2"],
            wurl1: getInf[id]["wurl1"],
            wname1: getInf[id]["wname1"],
            wurl2: getInf[id]["wurl2"],
            wname2: getInf[id]["wname2"],
          )
        ],
      ),
    );
  }

  listinf({
    required String developer,
    required String genre,
    required String connectivity,
    required String award1,
    required String award2,
    required String yurl1,
    required String yname1,
    required String yurl2,
    required String yname2,
    required String turl1,
    required String tname1,
    required String turl2,
    required String tname2,
    required String wurl1,
    required String wname1,
    required String wurl2,
    required String wname2,
  }) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'Game Details',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 106, 29, 201)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Text(
            "Developer:  $developer", /////////////////
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 116, 72, 170),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Text(
            "Genre(s):   $genre", ////////////////
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 116, 72, 170),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Text(
            "Connectivity:	$connectivity", ///////////////////
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 116, 72, 170),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'Game AWARDS & RANKINGS:	',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 106, 29, 201)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Text(
            "$award1", ////////////////////
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 116, 72, 170),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Text(
            "$award2", //////////////////
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 116, 72, 170),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'Youtube channels: ',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 106, 29, 201)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$yurl1'), ///////////////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$yname1", ///////////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$yurl2'), ////////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$yname2", /////////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'Twitch Streamers: ',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 106, 29, 201)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$turl1'), ///////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$tname1", /////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$turl2'), ////////////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$tname2", ///////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'Websites :',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 106, 29, 201)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$wurl1'), ////////////////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$wname1", //////////////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(left: 4),
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('$wurl2'), //////////////////////
            builder: (context, followLink) => InkWell(
              onTap: followLink,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  "$wname2", /////////////////////
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.amberAccent,
          thickness: 1,
        ),
      ],
    );
  }
}
