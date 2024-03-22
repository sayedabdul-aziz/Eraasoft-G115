import 'package:shared_preferences/shared_preferences.dart';

class AppLocalStorage {
  static late SharedPreferences pref;

  init() async {
    pref = await SharedPreferences.getInstance();
  }

  static cacheData(key, value) {
    if (value is String) {
      pref.setString(key, value);
    } else if (value is int) {
      pref.setInt(key, value);
    } else if (value is bool) {
      pref.setBool(key, value);
    } else {
      pref.setDouble(key, value);
    }
  }

  static getCachedData(key) {
    return pref.get(key);
  }
}
