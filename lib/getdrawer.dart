// ignore_for_file: prefer_const_constructors

import 'package:agioh_app/Auth/login.dart';
import 'package:agioh_app/about.dart';
import 'package:agioh_app/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class getdrawer extends StatelessWidget {
  const getdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('/Accounts/CZ81xAEqj6dNlY5sR9rbwmWbmKH2/User/')
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        List<DocumentSnapshot> s1 = snapshot.data!.docs;
        return Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 62, 70, 74),
            ),
            Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    '${s1[0]['userName']}',
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: s1[0]['imageUrl'] == ''
                        ? CircleAvatar(
                            child: Icon(FontAwesomeIcons.user),
                          )
                        : ClipOval(
                            child: Image.network(
                              '${s1[0]['imageUrl']}',
                              fit: BoxFit.cover,
                              width: 400,
                              height: 400,
                            ),
                          ),
                  ),
                  accountEmail: Text(
                    '${s1[0]['email']}',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => testProje(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "Home Page",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => about(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.error,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(
                //     left: 20,
                //     right: 20,
                //     top: 20,
                //   ),
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     child: ListTile(
                //       leading: Icon(
                //         Icons.home,
                //         color: Colors.white,
                //         size: 30,
                //       ),
                //       title: Text(
                //         "News",
                //         style: TextStyle(fontSize: 19, color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 140,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );

        ;
      },
    );

    // Stack(
    //   children: [
    //     Container(
    //       color: Color.fromARGB(255, 62, 70, 74),
    //     ),
    //     Column(
    //       children: [
    //         UserAccountsDrawerHeader(
    //           accountName: Text("niqqas master"),
    //           currentAccountPicture: CircleAvatar(
    //             backgroundImage: AssetImage(
    //               "images/ero.1.png",
    //             ),
    //           ),
    //           accountEmail: Text("niqqa@gmail.com"),
    //         ),
    //         Container(
    //           padding: EdgeInsets.only(
    //             left: 20,
    //             right: 20,
    //             top: 20,
    //           ),
    //           child: ElevatedButton(
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => testProje(),
    //                 ),
    //               );
    //             },
    //             child: ListTile(
    //               leading: Icon(
    //                 Icons.home,
    //                 color: Colors.white,
    //                 size: 30,
    //               ),
    //               title: Text(
    //                 "Home Page",
    //                 style: TextStyle(fontSize: 19, color: Colors.white),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Container(
    //           padding: EdgeInsets.only(
    //             left: 20,
    //             right: 20,
    //             top: 20,
    //           ),
    //           child: ElevatedButton(
    //             onPressed: () {
    //               Navigator.pushReplacement(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => about(),
    //                 ),
    //               );
    //             },
    //             child: ListTile(
    //               leading: Icon(
    //                 Icons.error,
    //                 color: Colors.white,
    //                 size: 30,
    //               ),
    //               title: Text(
    //                 "About",
    //                 style: TextStyle(fontSize: 19, color: Colors.white),
    //               ),
    //             ),
    //           ),
    //         ),
    //         // Container(
    //         //   padding: EdgeInsets.only(
    //         //     left: 20,
    //         //     right: 20,
    //         //     top: 20,
    //         //   ),
    //         //   child: ElevatedButton(
    //         //     onPressed: () {},
    //         //     child: ListTile(
    //         //       leading: Icon(
    //         //         Icons.home,
    //         //         color: Colors.white,
    //         //         size: 30,
    //         //       ),
    //         //       title: Text(
    //         //         "News",
    //         //         style: TextStyle(fontSize: 19, color: Colors.white),
    //         //       ),
    //         //     ),
    //         //   ),
    //         // ),
    //         Container(
    //           padding: EdgeInsets.only(
    //             left: 20,
    //             right: 20,
    //             top: 140,
    //           ),
    //           child: ElevatedButton(
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => Login(),
    //                 ),
    //               );
    //             },
    //             child: ListTile(
    //               leading: Icon(
    //                 Icons.logout,
    //                 color: Colors.white,
    //                 size: 30,
    //               ),
    //               title: Text(
    //                 "Logout",
    //                 style: TextStyle(fontSize: 19, color: Colors.white),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
