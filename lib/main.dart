import 'package:flutter/material.dart';
import 'package:stadium/Screens/WelcomeScreen.dart';
import 'package:stadium/route_Generator.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: HexColor("#0f140f"),
//        backgroundColor: HexColor('#71CC49'),
      ),

      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Flutter Demo',
//      theme: ThemeData(
//          // This is the theme of your application.
//          ),
      home: WelcomeScreen(),
    );
  }
}
