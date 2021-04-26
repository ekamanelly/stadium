import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math';

class ScoreBoardScreen extends StatefulWidget {
  @override
  _ScoreBoardScreenState createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: 21,
                itemBuilder: (content, userIdx) {
                  Random random = Random();
                  int percent = random.nextInt(90) + 10;
                  int first = random.nextInt(30) + 10;
                  int second = random.nextInt(20) + 5;
                  int third = random.nextInt(10);
                  return Card(
                    color: Colors.grey.withOpacity(0.15),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/star/dmx',
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
//                      height: MediaQuery.of(context).size.height / 7,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
//                                    border: Border.all(color: Colors.white),

                                          color: HexColor("#0f140f"),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        height: 55.0,
                                        child: CircleAvatar(
                                          radius: 35.0,
                                          backgroundImage: userIdx % 2 == 0
                                              ? AssetImage('images/male.png')
                                              : AssetImage('images/female.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Player ${userIdx + 1}',
                                      style: TextStyle(
                                        color: HexColor("#0f140f"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '$percent',
                                          style: TextStyle(fontSize: 40),
                                        ),
                                        Text(
                                          '%',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: percent > 90
                                                ? HexColor('#71cc49')
                                                : HexColor("#0f140f"),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
//                                crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text(
                                            '$first',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.symmetric(
                                                vertical: BorderSide(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4),
                                              child: Text(
                                                '$second',
//                                    style: TextStyle(fontSize: 40),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '$third',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    )
//      ),
        );
  }
}
