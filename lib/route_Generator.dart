import 'package:flutter/material.dart';
import 'package:stadium/Screens/HomeScreen.dart';
import 'package:stadium/Screens/NoInternetScreen.dart';
import 'package:stadium/Screens/ProfileStar.dart';
import 'package:stadium/Screens/RegistrationScreenOne.dart';
import 'package:stadium/Screens/RegistrationScreenTwo.dart';
import 'package:stadium/Screens/WelcomeScreen.dart';
import 'package:stadium/Screens/BottomNavigationBar.dart';
import 'package:stadium/Screens/LoginScreen.dart';
//import 'package:stadium/Screens/NoInternetScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => NoInternetScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/bottomNavigation':
        return MaterialPageRoute(builder: (_) => StadiumBottomNavBar());
      case '/registration/one':
        return MaterialPageRoute(builder: (_) => RegistrationScreenOne());
      case '/registration/two':
        return MaterialPageRoute(builder: (_) => RegistrationScreenTwo());
      case '/star/dmx':
        return MaterialPageRoute(builder: (_) => ProfileStar());
      case '/disconnet':
        return MaterialPageRoute(builder: (_) => NoInternetScreen());
    }
  }
}
