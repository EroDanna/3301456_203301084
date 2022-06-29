// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:agioh_app/Auth/authFire.dart';
import 'package:agioh_app/Auth/login.dart';
import 'package:agioh_app/main.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, String> getinf = {
    "username": "",
    "gmail": "",
    "password": "",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 33, 57),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/ero.2.png"),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -50),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 39,
                              color: Color.fromARGB(255, 174, 212, 242)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white54,
                            ),
                            hintStyle: TextStyle(color: Colors.white54),
                            hintText: "Username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Invaild user name';
                            }
                          },
                          onSaved: (val) {
                            getinf["username"] = val as String;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.at,
                              color: Colors.white54,
                            ),
                            hintStyle: TextStyle(color: Colors.white54),
                            hintText: "E-mail",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty || !val.contains('@')) {
                              return 'Invalid email !';
                            }
                            return null;
                          },
                          onSaved: (val) {
                            getinf["gmail"] = val as String;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.white54,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white54),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                          validator: (val) {
                            if (val!.length < 6 || val.isEmpty) {
                              return 'Invaild Password';
                            }
                          },
                          onSaved: (val) {
                            getinf["password"] = val as String;
                          }),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 200,
                        child: ElevatedButton(
                          onPressed: fetchFire,
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Do you have an account?! ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Text(
                              'Click here.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: Color.fromARGB(255, 88, 200, 234),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchFire() async {
    if (!_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      return;
    } else {
      FocusScope.of(context).unfocus();
      _formKey.currentState!.save();
    }
    AuthFire auth = AuthFire();
    var x =
        auth.signup(getinf['gmail'] as String, getinf['password'] as String);

    x.then((value) {
      print(value.user!.uid);
      userSetup(
        value.user!.uid,
        getinf['gmail'] as String,
        getinf['password'] as String,
        getinf['username'] as String,
      );
      print('access conneting to firebase');
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => testProje(),
      //   ),
      // );
    });
  }
}
