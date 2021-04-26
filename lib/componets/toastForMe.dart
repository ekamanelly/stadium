import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

toastForMe(text, bgColor) {
//weifnwed
  var color = {
    'success': Colors.green.shade400,
    'welcome': HexColor("#093852"),
    'error': Colors.red.shade500
  };
  return Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: color[bgColor],
      textColor: Colors.white,
      fontSize: 16.0);
}
