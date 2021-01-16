import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtotolist/src/screens/forgot_password/Forgotpassword.dart';
import 'package:newtotolist/src/screens/homepage/HomePage.dart';
import 'package:stacked/stacked.dart';

class LoginPageViewModel extends BaseViewModel {
  void openForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgotPassword(),
      ),
    );
  }

  void openHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }
}
