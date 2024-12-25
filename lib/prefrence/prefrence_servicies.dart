import 'package:shared_preferences/shared_preferences.dart';

class PreferenceServices {
  static String isLoginKey = 'isLoginKey';
  static String isOnBoardingKey = 'isOnBoardingKey';

  static SharedPreferences? pref;

  static Future<void> init() async {
    pref = await SharedPreferences.getInstance();
  }

  static Future<void> setData(
      {required String key, required dynamic value}) async {
    if (value is int) {
      await pref!.setInt(key, value);
    } else if (value is double) {
      await pref!.setDouble(key, value);
    } else if (value is bool) {
      await pref!.setBool(key, value);
    } else if (value is String) {
      await pref!.setString(key, value);
    } else {
      print("This data is not valid");
    }
  }

  static int getIntData({required String key}) {
    return pref!.getInt(key) ?? 0;
  }

  static double getDoubleData({required String key}) {
    return pref!.getDouble(key) ?? 0.0;
  }

  static bool getBoolData({required String key}) {
    return pref!.getBool(key) ?? false;
  }

  static String getStringData({required String key}) {
    return pref!.getString(key) ?? "";
  }
//
// static List<String> getStringList({required String key}) {
//   return pref!.getStringList(key) ?? [];
// }

    static Future<void> removeKey(String key)
    async {
     await  pref!.remove(key);
    }
}