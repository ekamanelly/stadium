import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:stadium/Screens/HomeScreen.dart';
import 'package:stadium/Screens/ScoreBoardScreen.dart';
import 'package:stadium/Screens/SettingsScreen.dart';
import 'package:stadium/Screens/StadiumScreen.dart';

class StadiumBottomNavBar extends StatefulWidget {
  @override
  _StadiumBottomNavBarState createState() => _StadiumBottomNavBarState();
}

class _StadiumBottomNavBarState extends State<StadiumBottomNavBar> {
  int _currentIndex = 1;
  final _children = [
    HomeScreen(),
    ScoreBoardScreen(),
//    StadiumScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    void onTappedBar(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: HexColor("#0f140f"),
//        backgroundColor: HexColor('#71cc49').withOpacity(0.03),
        selectedIndex: _currentIndex,
//        showElevation: true,
//        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: onTappedBar,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.foundation_rounded),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white70),
            ),
            activeColor: HexColor('#71cc49'),
            inactiveColor: HexColor('#71cc49').withOpacity(0.3),
            textAlign: TextAlign.start,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            title: Text(
              'Score board',
              style: TextStyle(color: Colors.white70),
            ),
            activeColor: HexColor('#71cc49'),
//            inactiveColor: HexColor('#053A06'),
            textAlign: TextAlign.start,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.miscellaneous_services_rounded),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white70),
            ),
            activeColor: HexColor('#71cc49'),
//            inactiveColor: HexColor('#053A06'),
//            inactiveColor: Colors.white70,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
