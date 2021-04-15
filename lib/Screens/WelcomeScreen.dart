import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _phoneController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/registration/one',
                  );
                },
                child: Container(
                  child: Text(
                    'Stadium',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
