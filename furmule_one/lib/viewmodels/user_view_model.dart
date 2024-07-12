import 'package:flutter/material.dart';
import 'package:furmule_one/models/user.dart';

class UserViewModel extends ChangeNotifier {
  User _user = User(firstname: '', lastname: '');

  String get firstname => _user.firstname;
  String get lastname => _user.lastname;

  void setFirstName(String firstname) {
    _user.firstname = firstname;
    notifyListeners();
  }

  void setLastName(String lastname) {
    _user.lastname = lastname;
    notifyListeners();
  }

  User getUser() {
    return _user;
  }
}
