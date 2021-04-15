//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stadium/componets/BottomCurve.dart';
import 'package:stadium/componets/TopAndBottomCurve.dart';
import 'package:stadium/componets/TopCurve.dart';
import 'package:stadium/componets/TestPaint.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: BottomCurve(
//          Container(
//            child: Text('eeeee'),
//          ),
//          60.0,
//          MediaQuery.of(context).size.width,
//          HexColor("#031C06"),
//        ),
//        elevation: 0,
//      ),
      body: Container(
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//            begin: Alignment.topRight,
//            end: Alignment.bottomLeft,
////          begin: Alignment.topCenter,
////          end: Alignment.bottomRight,
//            stops: [
//              0.1,
//              0.4,
//              0.6,
//              0.9,
//            ],
//            colors: [
//              Colors.yellow,
////            Colors.red,
//              HexColor('#053A06'),
//              HexColor('#71CC49'),
////            Colors.indigo,
//
//              HexColor('#031C06'),
//            ],
//          ),
//        ),
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  TopAndBottomCurve(
                    Container(
//                      decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                        begin: Alignment.topRight,
//                        end: Alignment.bottomLeft,
////          begin: Alignment.topCenter,
////          end: Alignment.bottomRight,
//                        stops: [
//                          0.1,
//                          0.4,
//                          0.6,
//                          0.9,
//                        ],
//                        colors: [
//                          Colors.yellow,
////            Colors.red,
//                          HexColor('#053A06'),
//                          HexColor('#71CC49'),
////            Colors.indigo,
//
//                          HexColor('#031C06'),
//                        ],
//                      )),
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
                                            AssetImage('images/ekama.jpeg'),
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'ekama',
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
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'West Bromwich vs Southampton',
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
                                    'West Bromwich vs Southampton',
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

//          TopAndBottomCurve(
//            Container(),
//            MediaQuery.of(context).size.height * 1 / 3,
//            MediaQuery.of(context).size.width,
//            Colors.yellowAccent,
//          ),
//        ],
//      ),
    );
  }
}

//class karmaCurves extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    Path path = Path();
//    print('params');
//    print(size.height);
//    print(size.width);
//    path.lineTo(0.0, size.height - 20);
//
//    var firstControlPoint = Offset(size.width / 4, size.height);
//    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
//    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//        firstEndPoint.dx, firstEndPoint.dy);
//
//    var secondControlPoint =
//        Offset(size.width - (size.width / 3.25), size.height - 65);
//    var secondEndPoint = Offset(size.width, size.height - 40);
//    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//        secondEndPoint.dx, secondEndPoint.dy);
//
//    path.lineTo(size.width, size.height - 40);
//    path.lineTo(size.width, 20);
//
//    var topFirstControlPoint = Offset(size.width / 1.4, 0.0);
//    var toPFirstEndPoint = Offset(size.width / 2.25, 30.0);
//    path.quadraticBezierTo(topFirstControlPoint.dx, topFirstControlPoint.dy,
//        toPFirstEndPoint.dx, toPFirstEndPoint.dy);
//
//    var topLeftControlPoint = Offset(size.width / 6.5, 65);
//    var topLeftEndPoint = Offset(0.0, 40);
//    path.quadraticBezierTo(topLeftControlPoint.dx, topLeftControlPoint.dy,
//        topLeftEndPoint.dx, topLeftEndPoint.dy);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    return true;
//  }
//}
