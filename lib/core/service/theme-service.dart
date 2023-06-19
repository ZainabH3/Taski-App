import 'package:flutter/material.dart';
import 'package:taski_app/core/theme/manager-light-theme.dart';

class ThemeService {
  ThemeMode getThemeMode() => ThemeMode.light;

  ThemeData getThemeData() => managerLightTheme();
}
