import 'dart:convert' show jsonDecode;
import 'package:flutter_role_base_access_control/model.dart';
import 'package:flutter/services.dart' show rootBundle;

class Core {
  static UserData? _user;

  UserData? get user => _user;

  Future<void> setUserData() async {
    // loads user data from shared preferences and sets it to
    // [user]

    print("Refreshing role");

    _user = UserData.fromJson(const {
      "username": "Sparsh",
      "email": "sparsh@gmail.com",
      "role": {"name": "admin", "level": 3}
    });
  }
}
