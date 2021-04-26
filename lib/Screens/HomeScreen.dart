//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stadium/componets/BottomCurve.dart';
import 'package:stadium/componets/TopAndBottomCurve.dart';
import 'package:stadium/componets/TopCurve.dart';
import 'package:stadium/componets/TestPaint.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:provider/provider.dart';
import 'package:stadium/store/user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var username = Provider.of<User>(context, listen: false).username;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  TopAndBottomCurve(
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
//                            title: Text('Last Tip'),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25.0,
//                        child: Image.asset('images/ekama.jpeg'),
                                        backgroundImage:
                                            AssetImage('images/female.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        '$username',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '67%',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.favorite_rounded,
//                                size: 13,
                                        size: 14,
                                        color: Colors.redAccent,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '6k',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.people,
                                        size: 14,
                                        color: Colors.yellowAccent,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
//              250,
                    MediaQuery.of(context).size.height * 1 / 3,
                    MediaQuery.of(context).size.width,
                    Colors.grey.withOpacity(0.05),
                  ),
                  TopAndBottomCurve(
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Text('Most Reserved seat'),
                                Icon(
                                  Icons.favorite_rounded,
                                  size: 13,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'West Bromwich vs Liverpool',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    MediaQuery.of(context).size.height * 1 / 3,
                    MediaQuery.of(context).size.width,
                    Colors.grey.withOpacity(0.15),
                  ),
                  TopAndBottomCurve(
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Text('Tip of the Week'),
//                                Icon(
//                                  Icons.favorite_rounde,
//                                  size: 13,
//                                  color: Colors.white,
//                                ),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Over 2.5 goals',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    MediaQuery.of(context).size.height * 1 / 3,
                    MediaQuery.of(context).size.width,
                    HexColor("#0f140f"),
                  ),
//                  TopCurve(
//                    Container(),
//                    110,
//                    MediaQuery.of(context).size.width,
//                    HexColor("#031Caa"),
//                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
