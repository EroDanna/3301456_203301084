// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Gcomment extends StatelessWidget {
  const Gcomment({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Comments",
          style: const TextStyle(fontSize: 28),
        ),
      )),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                width: 7,
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 45,
                  ),
                  title: Text(
                    "Abdo",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  subtitle: Text(
                    "This is a best game i have played",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomCenter,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                hintText: "add a comment",
                hintMaxLines: 5,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
