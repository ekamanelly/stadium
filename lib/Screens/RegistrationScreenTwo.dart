import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegistrationScreenTwo extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var _phoneController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            key: _formKey,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Container(
//                      width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                    color: HexColor("#0f140f"),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Token',
                      prefixIcon: Icon(
                        Icons.copy,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Container(
//                      width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                    color: HexColor("#0f140f"),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Club',
                      prefixIcon: Icon(
                        Icons.people,
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
                      top: 30, right: 50, left: 50, bottom: 143),
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
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/bottomNavigation',
                        );
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: HexColor('#71cc49'),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
