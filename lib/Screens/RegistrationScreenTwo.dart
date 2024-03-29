import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hexcolor/hexcolor.dart';
import 'package:stadium/componets/toastForMe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:stadium/store/user.dart';

class RegistrationScreenTwo extends StatefulWidget {
  var phone;

  RegistrationScreenTwo({Key key, @required this.phone}) : super(key: key);

  @override
  _RegistrationScreenTwoState createState() => _RegistrationScreenTwoState();
}

class _RegistrationScreenTwoState extends State<RegistrationScreenTwo> {
  final _formKey = GlobalKey<FormState>();

  var _passwordController = TextEditingController();
  var _emailController = TextEditingController();
  var _usernameController = TextEditingController();
  bool _loaded = false;

  @override
  Widget build(BuildContext context) {
    var phone = widget.phone;
    print(phone);

    return Scaffold(
//      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: !_loaded
              ? Column(
//                  key: _formKey,
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
                              return 'Please enter Username';
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
                              return 'Please enter email';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
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
                            top: 10, right: 50, left: 50, bottom: 5),
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
//                                Navigator.pushNamedAndRemoveUntil(
//                                    context, '/bottomNavigation', (_) => false);
                                setState(() {
                                  _loaded = true;
                                });
//
                                var body = {
                                  'password': _passwordController.text,
                                  'email': _emailController.text,
                                  'username': _usernameController.text,
                                  'phone': phone
                                };

                                String url =
                                    'https://sever-stadium.herokuapp.com/mobile/signup';

                                var response =
                                    await http.post(Uri.parse(url), body: body);
                                var data = json.decode(response.body);

                                if (data['status']) {
                                  toastForMe(data['msg'], 'success');
                                  var pass = await Provider.of<User>(context,
                                          listen: false)
                                      .setuser(data['user']);
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
                                  toastForMe(data['msg'], 'error');
                                  setState(() {
                                    _loaded = false;
                                  });
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
                            top: 30, right: 50, left: 50, bottom: 60),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => Navigator.pushNamed(context, '/login'),
                          child: Container(
//                    decoration: BoxDecoration(
//                      color: HexColor('#ffffff'),
//                      borderRadius: BorderRadius.circular(10.0),
//                    ),
//                      height: 40,
//                      width: MediaQuery.of(context).size.width / 2,
                            child: Text('Have an account?'),
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
