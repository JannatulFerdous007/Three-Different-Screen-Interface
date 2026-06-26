import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static Future<void> saveLogin() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool("isLogin", true);
  }

  static Future<bool> checkLogin() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool("isLogin") ?? false;
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove("isLogin");
  }
}
