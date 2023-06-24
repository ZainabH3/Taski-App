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
}
