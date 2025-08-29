import 'package:flutter/material.dart';
import 'package:isalmi/core/theme/colors_pallete.dart';

abstract class MangerTheme {
  static ThemeData theme = ThemeData(
    primaryColor: ColorsPallete.primaryColor,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsPallete.primaryColor,
    ),
  );
}
