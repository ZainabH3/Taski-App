import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:taski_app/fetaures/out-boarding/presentation/controller/out_boarding_controller.dart';

import '../fetaures/splash/presentation/controller/splash-controller.dart';


final instance = GetIt.instance;

void initModules() {

}

initSplash() {
  Get.put<SplashController>(SplashController());
}

void initOutBoarding() {
  disposeSplash();
  Get.put<OutBoardingController>(OutBoardingController());
}

void disposeSplash() {
  Get.delete<SplashController>();
}




