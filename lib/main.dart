import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taski_app/core/service/theme-service.dart';
import 'package:taski_app/routes/routes.dart';

import 'config/constants.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  final ThemeService _themeService;
   MyApp({super.key}) : _themeService = ThemeService();


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
         designSize: const Size(
           Constants.deviceWidth,
           Constants.deviceHeight,
         ),

      builder: (context,child) {
        return MaterialApp(

 debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashView,
          onGenerateRoute: RouteGenerator.getRoute,
          themeMode:_themeService.getThemeMode() ,
          //themeMode:_themeService.getThemeData() ,

        );
      }
    );
  }
}

