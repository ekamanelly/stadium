import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stadium/componets/toastForMe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:stadium/store/user.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchedON = true;
  @override
  Widget build(BuildContext context) {
    var email = Provider.of<User>(context, listen: false).email;
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
              subtitle: Text(
                '$email',
                style: TextStyle(fontSize: 11),
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
                  toastForMe('still working on the light mood', 'success');
                  setState(() {
                    _switchedON = value;
                  });
                },
              ),
            ),
            ListTile(
              onTap: () async {
                SharedPreferences sharedPref =
                    await SharedPreferences.getInstance();
                sharedPref.setString('user', '');
                sharedPref.setString('password', '');
                Navigator.of(context).pushReplacementNamed('/login');
              },
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
