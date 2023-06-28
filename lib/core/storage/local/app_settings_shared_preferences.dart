import 'package:shared_preferences/shared_preferences.dart';
import 'package:taski_app/config/constants.dart';
import 'package:taski_app/core/extensions/extensions.dart';

class AppSettingsSharedPreferences {
  final SharedPreferences _sharedPreferences;

  AppSettingsSharedPreferences(this._sharedPreferences);

  Future<void> setOutBoardingViewed() async {
    await _sharedPreferences.setBool(
      ConstantsPrefsKeys.outBoardingViewedKey,
      true,
    );
  }

  bool getOutBoardingViewed() {
    return _sharedPreferences
        .getBool(ConstantsPrefsKeys.outBoardingViewedKey)
        .onNull();
  }

  Future<void> setToken(String token) async {
    await _sharedPreferences.setString(ConstantsPrefsKeys.token, token);
  }

  String getToken() {
    return _sharedPreferences.getString(ConstantsPrefsKeys.token).onNull();
  }

  void clear() {
    _sharedPreferences.clear();
  }
}
