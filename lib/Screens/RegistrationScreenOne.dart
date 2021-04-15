import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:fire';

class RegistrationScreenOne extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
//  var _phoneController;
  var _phoneController = TextEditingController();
  var _countryCodeController;
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
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                            color: HexColor("#0f140f"),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextButton(
                            child: Text(
                              '234',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              showCountryPicker(
                                context: context,
                                countryListTheme: CountryListThemeData(
                                  flagSize: 25,
                                  backgroundColor: Colors.white,
                                  textStyle: TextStyle(
                                      fontSize: 16, color: Colors.blueGrey),
                                ),
                                onSelect: (Country country) => {
//                                  _countryCodeController = ,
                                  print(country),
                                  print(
                                      'Select country: ${country.displayName}')
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
//                      width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                          color: HexColor("#0f140f"),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _phoneController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
//                            enabledBorder: OutlineInputBorder(
//                                borderRadius: BorderRadius.circular(10.0),
//                                borderSide: BorderSide(color: Colors.white)),
                            hintText: '8165165681',
                            prefixIcon: Icon(
                              Icons.phone_android_outlined,
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
                  ],
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
                      print(_countryCodeController.text);
                      print(_phoneController);
//                      Navigator.pushNamed(
//                        context,
//                        '/registration/two',
//                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: HexColor('#71cc49'),
                      ),
                    ),
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
