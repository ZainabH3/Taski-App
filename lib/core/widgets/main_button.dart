import 'package:flutter/material.dart';
import 'package:taski_app/config/constants.dart';
import 'package:taski_app/core/resources/manager-colors.dart';
import 'package:taski_app/core/resources/manager-sizes.dart';

Widget mainButton({
  required Widget child,
  ShapeBorder? shapeBorder,
  Color? color,
  double? height,
  double? minWidth,
  double? elevation,
}) {
  return MaterialButton(
    onPressed: () {},
    shape: shapeBorder ??
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ManagerRadius.r12)),
    color: color ?? ManagerColors.transparent,
    minWidth: minWidth ?? ManagerWidth.w16,
    height: height ?? ManagerHeight.h16,
    elevation: elevation ?? Constants.elevationButton,
    child: child,
  );
}
