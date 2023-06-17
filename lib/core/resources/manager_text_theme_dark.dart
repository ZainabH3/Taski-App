import 'package:flutter/material.dart';

import 'manager-colors.dart';
import 'manager-fonts.dart';
import 'manager-styles.dart';

class ManagerTextThemeDark extends TextTheme {
  @override
  TextStyle get displayMedium => getMediumTextStyle(
    fontSize: ManagerFontSize.s20,
    color: ManagerColors.textColorbig,
  );

  @override
  TextStyle get displaySmall => getBoldTextStyle(
    fontSize: ManagerFontSize.s16,
    color: ManagerColors.textColor3,
  );

  @override
  TextStyle get headlineMedium => getMediumTextStyle(
    fontSize: ManagerFontSize.s16,
    color: ManagerColors.textColorbig,
  );

  @override
  TextStyle get titleMedium => getMediumTextStyle(
    fontSize: ManagerFontSize.s14,
    color: ManagerColors.textColorbig,
  );

  @override
  TextStyle get bodyLarge => getRegularTextStyle(
    fontSize: ManagerFontSize.s16,
    color: ManagerColors.textColorbig,
  );
}