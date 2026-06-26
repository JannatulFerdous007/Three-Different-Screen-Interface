import 'package:flutter/material.dart';

import '../services/shared_pref_service.dart';

class AuthProvider extends ChangeNotifier {
  bool isLogin = false;

  Future<void> login() async {
    await SharedPrefService.saveLogin();

    isLogin = true;

    notifyListeners();
  }

  Future<void> logout() async {
    await SharedPrefService.logout();

    isLogin = false;

    notifyListeners();
  }
}
