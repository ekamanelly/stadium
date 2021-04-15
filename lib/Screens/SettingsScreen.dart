import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchedON = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(),
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                size: 20.0,
              ),
              title: Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active_outlined,
                size: 20.0,
              ),
              title: Text(
                'Notification',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.security_outlined,
                size: 20.0,
              ),
              title: Text(
                'Security',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.brightness_2_outlined,
                size: 20.0,
              ),
              title: Text(
                'Dark mood',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Switch(
                activeColor: HexColor('#71cc49'),
                value: _switchedON,
                onChanged: (value) {
                  setState(() {
                    _switchedON = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 20.0,
              ),
              title: Text(
                'logout',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
