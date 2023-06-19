import 'package:flutter/material.dart';

import '../resources/manager-colors.dart';

ThemeData managerDarkThemeData() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,

    /// MAIN COLORS APP
    primaryColor: ManagerColors.primaryColor1,
    primaryColorDark: ManagerColors.black,

    // this for disabled button colors
    disabledColor: ManagerColors.black,
    splashColor: ManagerColors.primaryColor1,
   // scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorDark,

    /// APP BAR THEME



  );
   }