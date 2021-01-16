import 'package:flutter/material.dart';
import 'package:newtotolist/src/screens/login_page/LoginPage.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends BaseViewModel {
  int _currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );

  int get currentPage => _currentPage;
  PageController get pageController => _pageController;

  set setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  openLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
