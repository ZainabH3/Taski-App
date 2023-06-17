import 'package:flutter/material.dart';

import 'package:taski_app/core/theme/manager_light_theme.dart';

class ThemeService {
  ThemeMode getThemeMode() => ThemeMode.light;

  ThemeData getThemeData() => managerLightThemeData();
}
