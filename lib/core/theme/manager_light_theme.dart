import 'package:flutter/material.dart';
import 'package:taski_app/core/resources/manager_text_theme_light.dart';

import '../../config/constants.dart';
import '../resources/manager-colors.dart';
import '../resources/manager-fonts.dart';
import '../resources/manager-styles.dart';


ThemeData managerLightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,

    /// MAIN COLORS APP
    primaryColor: ManagerColors.primaryColor1,
    primaryColorLight: ManagerColors.primaryColor1,

    // this for disabled button colors
    // disabledColor: ManagerColors.disabledColor,
    splashColor: ManagerColors.greyLight,
    scaffoldBackgroundColor: ManagerColors.scaffoldBackgroundColorLight,

    /// APP BAR THEME
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ManagerColors.greyLight,
      elevation: Constants.elevationAppBar,
      titleTextStyle: getBoldTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.primaryColor1,
      ),
    ),

    /// BUTTON THEME
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(),
      disabledColor: ManagerColors.greyLight,
      // buttonColor: ManagerColors.buttonColorDarK,
    ),

    textTheme: ManagerTextThemeLight(),
  );
}