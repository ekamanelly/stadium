import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hexcolor/hexcolor.dart';
import 'package:stadium/componets/toastForMe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:stadium/store/user.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  var _passwordController = TextEditingController();
  var _usernameController = TextEditingController();
  bool loaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: !loaded
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
//                      width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                          color: HexColor("#0f140f"),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter username';
                            }
                            return null;
                          },
                          controller: _usernameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            prefixIcon: Icon(
                              Icons.account_box_outlined,
                              color: Colors.white,
                              size: 20.0,
                            ), // icon is
                            hintStyle: TextStyle(
                              fontFamily: 'Asap',
                              color: Colors.white,
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 5),
                      child: Container(
//                      width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                          color: HexColor("#0f140f"),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.security_outlined,
                              color: Colors.white,
                              size: 20.0,
                            ), // icon is
                            hintStyle: TextStyle(
                              fontFamily: 'Asap',
                              color: Colors.white,
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 30, right: 50, left: 50, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('#ffffff'),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextButton(
                            style: ButtonStyle(),
//                      color: Colors.green,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                var body = {
                                  'password': _passwordController.text,
                                  'username': _usernameController.text,
                                };
                                setState(() {
                                  loaded = true;
                                });
                                String url =
                                    'https://sever-stadium.herokuapp.com/mobile/login';

                                var response =
                                    await http.post(Uri.parse(url), body: body);
                                var data = json.decode(response.body);
                                print(data);

                                if (data['status']) {
                                  var pass = await Provider.of<User>(context,
                                          listen: false)
                                      .setuser(data['user']);
                                  toastForMe(
                                      'welcome ${_usernameController.text}',
                                      'success');
                                  if (pass) {
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        '/bottomNavigation', (_) => false);
                                  }

                                  SharedPreferences sharedPref =
                                      await SharedPreferences.getInstance();

                                  sharedPref.setString(
                                      'user', _usernameController.text);
                                  sharedPref.setString(
                                      'password', _passwordController.text);
                                } else {
                                  setState(() {
                                    loaded = false;
                                  });
                                  toastForMe(data['msg'], 'error');
                                }
                              }
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: HexColor('#71cc49'),
                              ),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            right: 50, left: 50, bottom: 50),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () =>
                              Navigator.pushNamed(context, '/registration/one'),
                          child: Container(
//                      decoration: BoxDecoration(
//                        color: HexColor('#ffffff').withOpacity(0.2),
//                        borderRadius: BorderRadius.circular(10.0),
//
//                      ),
//                      height: 40,
//                      width: MediaQuery.of(context).size.width / 2,
                            child: TextButton(
                                child: Text('Don\'t have an account?')),
                          ),
                        )),
                  ],
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
