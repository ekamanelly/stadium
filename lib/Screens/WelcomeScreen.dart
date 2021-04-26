import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:stadium/componets/toastForMe.dart';

import 'package:provider/provider.dart';
import 'package:stadium/store/user.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

login() async {
  SharedPreferences sharedPref = await SharedPreferences.getInstance();
  String username = sharedPref.getString('user');
  String password = sharedPref.getString('password');

  if (username != null) {
    String url = 'https://sever-stadium.herokuapp.com/mobile/login';

    var response = await http.post(Uri.parse(url),
        body: {'username': username, 'password': password});
    var data = json.decode(response.body);
    return data;
  } else {
    var data = {
      'status': false,
    };
    return data;
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 200), () async {
      var data = await login();
      print(data);
      if (data['status']) {
        toastForMe('Nice to see you ${data['user']['username']}, ', 'success');
        var pass = await Provider.of<User>(context, listen: false)
            .setuser(data['user']);
//
        if (pass) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/bottomNavigation', (_) => false);
        }

//        Navigator.of(context).pushReplacementNamed('/bottomNavigation');
      } else {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false);
      }
    });
//    Future.delayed(Duration(seconds: 2), () {
//      Navigator.pushNamed(
//        context,
//        '/registration/one',
//      );
//    });
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Stadium',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
