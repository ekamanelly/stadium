import 'package:flutter/material.dart';
import 'package:stadium/componets/BottomCurve.dart';
import 'package:stadium/componets/TopCurve.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor("#0f140f"),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#99D478').withOpacity(0.3),
                        spreadRadius: 0.2,
                        blurRadius: 2,
                        offset: Offset(1, -1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ListTile(
//                      dense: true,
                      leading: CircleAvatar(
                        radius: 60.0,
//                        child: Image.asset('images/ekama.jpeg'),
                        backgroundImage: AssetImage('images/ekama.jpeg'),
                      ),
                      title: Text('Dmx'),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Tip Star'),
                              Icon(
                                Icons.star_border,
                                size: 13,
                                color: HexColor('#FFEA00'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('2.3k'),
                              Icon(
                                Icons.favorite_rounded,
                                size: 13,
                                color: Colors.redAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor("#0f140f"),
//                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextButton(
                        style: ButtonStyle(),
//                      color: Colors.green,
                        onPressed: () {
//                            Navigator.pushNamed(
//                              context,
//                              '/registration/two',
//                            );
                        },
                        child: Text(
                          'See Tip ',
                          style: TextStyle(
                            color: HexColor('#71cc49'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextButton(
                        style: ButtonStyle(),
//                      color: Colors.green,
                        onPressed: () {
//                            Navigator.pushNamed(
//                              context,
//                              '/registration/two',
//                            );
                        },
                        child: Text(
                          'Subscribe',
                          style: TextStyle(color: HexColor('#71cc49')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
//                  color: HexColor("#031C06"),
//                  borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(35.0),
//                    topRight: Radius.circular(35.0),
//                  ),
                    ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 180,
                            width: 30,
                            child: Center(
                              child: RotatedBox(
                                  quarterTurns: 3, child: Text("Accracy")),
                            ),
                            decoration: BoxDecoration(
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#99D478').withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 160,
                            width: 30,
                            child: Center(
                              child: RotatedBox(
                                  quarterTurns: 3, child: Text("Wins")),
                            ),
                            decoration: BoxDecoration(
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#99D478').withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 30,
                            child: Center(
                              child: RotatedBox(
                                  quarterTurns: 3, child: Text("Games")),
                            ),
                            decoration: BoxDecoration(
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#99D478').withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 30,
                            child: Center(
                              child: RotatedBox(
                                  quarterTurns: 3, child: Text("Point")),
                            ),
                            decoration: BoxDecoration(
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#99D478').withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 30,
                            child: Center(
                              child: RotatedBox(
                                  quarterTurns: 3, child: Text("Seasons")),
                            ),
                            decoration: BoxDecoration(
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#99D478').withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: HexColor('#71cc49').withOpacity(0.4),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
//                          height: 180,
                            width: 30,
                            child: Center(child: Text('90')),
                          ),
                          Container(
//                          height: 160,
                            width: 30,
                            child: Center(
                              child: Text('9'),
                            ),
                          ),
                          Container(
//                          height: 140,
                            width: 30,
                            child: Center(
                              child: Text('10'),
                            ),
                          ),
                          Container(
//                          height: 120,
                            width: 30,

                            child: Center(
                              child: Text('28'),
                            ),
                          ),
                          Container(
//                          height: 100,
                            width: 30,
                            child: Center(
                              child: Text('1'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
//
          ],
        ),
      ),
    );
  }
}
