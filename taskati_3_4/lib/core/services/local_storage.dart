import 'package:hive_flutter/hive_flutter.dart';

class AppLocalStorage {
  static late Box box;
  init() {
    box = Hive.box('user');
  }

  static cacheDate(key, value) {
    box.put(key, value);
  }

  static getCachedData(key) {
    return box.get(key);
  }
}
