import 'dart:ui';
import 'package:flutter/material.dart';

import 'manager-colors.dart';
import 'manager-fonts.dart';

TextStyle _textStyle({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
  required TextDecoration decoration,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
  );
}

TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontFamily: ManagerFonts.fontFamily,
    fontSize: fontSize,
    fontWeight: FontWeight.normal,
    color: color,
    decoration: decoration,
  );
}

TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontFamily: ManagerFonts.fontFamily,
    fontSize: fontSize,
    fontWeight: FontWeight.w500,
    color: color,
    decoration: decoration,
  );
}

TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontFamily: ManagerFonts.fontFamily,
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: color,
    decoration: decoration,
  );
}

TextStyle getTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  FontWeight? weight,
}) {
  return _textStyle(
    fontFamily: ManagerFonts.fontFamily,
    fontSize: fontSize,
    fontWeight: weight ?? ManagerFontWeight.medium,
    color: color,
    decoration: decoration,
  );
}



class ManagerTextThemeDark extends TextTheme {
  @override
  TextStyle get displayMedium => getMediumTextStyle(
    fontSize: ManagerFontSize.s20,
    color: ManagerColors.textColorbig,
  );
}
