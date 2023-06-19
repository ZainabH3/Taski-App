
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fetaures/splash/presentation/view/splash-view.dart';

class Routes {
  static const String splashView = '/splash_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:

        return MaterialPageRoute(builder: (_) =>SplashView() );
      default:
        return MaterialPageRoute(builder: (_) => SplashView());
    }
  }

}

