import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

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
          child: Column(
            children: [
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
              Card(
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                              color: HexColor("#0f140f"),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 55.0,
                            child: Image.asset('images/ekama.jpeg'),
//                            child: CircleAvatar(
//                              radius: 35.0,
////                        child: Image.asset('images/ekama.jpeg'),
//                              backgroundImage: AssetImage('images/ekama.jpeg'),
//                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(fontSize: 40),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: HexColor("#0f140f"),
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
                                        '70',
//                                    style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.white),
                                          ),

//                          color: HexColor('#053A06'),
//                                          color: HexColor("#0f140f"),

//                                        borderRadius:
//                                            BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Text(
                                            '70',
//                                    style: TextStyle(fontSize: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '70',
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
              ),
            ],
          ),
        ),
      ),
    )
//      ),
        );
  }
}
