import 'package:get/get.dart';
import 'package:taski_app/config/dependency-injection.dart';
import 'package:taski_app/core/storage/local/app_settings_shared_preferences.dart';
import '../../../../config/constants.dart';
import '../../../../routes/routes.dart';

class SplashController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
  instance<AppSettingsSharedPreferences>();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: Constants.splashDuration),
          () {
        if (_appSettingsSharedPreferences.getOutBoardingViewed()) {
          Get.offAllNamed(Routes.loginView);
        } else {
          Get.offAllNamed(Routes.outBoardingView);
        }
      },
    );
  }
}
