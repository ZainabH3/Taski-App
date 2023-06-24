import 'package:flutter/material.dart';
import 'package:taski_app/config/constants.dart';
import 'package:taski_app/core/extensions/extensions.dart';
import 'package:taski_app/core/resources/manager-sizes.dart';

Widget mainButton({
  required Widget child,
  void Function()? onPressed,
  ShapeBorder? shapeBorder,
  Color? color,
  double? height,
  double? minWidth,
  double? elevation,
}) {
  return MaterialButton(
    onPressed: onPressed.onNull(),
    shape: shapeBorder ??
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ManagerRadius.r12)),
    color: color.onNull(),
    minWidth: minWidth.onNull(),
    height: height.onNull(),
    elevation: elevation ?? Constants.elevationButton,
    child: child,
  );
}
