import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class User extends ChangeNotifier {
  String username;
  String phone;
  String email;
  String img;

  var credential;

//  User(this.username, this.email, this.img, this.phone);

  setuser(body) {
    username = body['username'];
    email = body['email'];
    img = body['img'];
    phone = body['phone'];
    notifyListeners();
    return true;
  }
}
