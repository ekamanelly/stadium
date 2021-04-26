import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:stadium/Screens/RegistrationScreenTwo.dart';

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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5, left: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),

//                          color: HexColor('#053A06'),
                            color: HexColor("#0f140f"),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: CountryCodePicker(
                            dialogBackgroundColor: HexColor("#0f140f"),
                            onChanged: (val) {
                              _countryCodeController = val;
                              print(_countryCodeController);
                            },
                            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                            initialSelection: 'NG',
                            favorite: ['+234', 'NG'],
                            showFlagDialog: true,
                            comparator: (a, b) => b.name.compareTo(a.name),
                            onInit: (code) {
                              _countryCodeController = code.dialCode;
                              // print("on init ${code.name} ${code.dialCode} ${code.name}");
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
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
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print(_countryCodeController);
                        print(_phoneController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationScreenTwo(
                                    phone:
                                        '$_countryCodeController${_phoneController.text}',
                                  )),
                        );
                      }
                    },
                    child: Text(
                      'contiune',
                      style: TextStyle(
                        color: HexColor('#71cc49'),
                      ),
                    ),
                  ),
                ),
              ),
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
          ),
        ),
      ),
    );
  }
}
