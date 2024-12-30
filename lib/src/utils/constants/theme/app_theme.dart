import 'package:flutter/material.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/theme/custom_themes/app_bar_theme.dart';
import 'package:liroy/src/utils/constants/theme/custom_themes/filled_button_theme.dart';
import 'package:liroy/src/utils/constants/theme/custom_themes/outlined_button_theme.dart';
import 'package:liroy/src/utils/constants/theme/custom_themes/text_theme.dart';

class SLTheme {
  SLTheme._(); //to avoid instantiation

  //light mode theme
  static final lightmodeTheme = ThemeData(
    textTheme: SLTextTheme.lightTextTheme,
    brightness: Brightness.light,
    useMaterial3: true,
    filledButtonTheme: SLFilledButtonTheme.ligntmodeFilledButtonTheme,
    outlinedButtonTheme: SLOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: SLAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: bgColor,

    // colorScheme: //use flex color scheme
  );

  //dark mode theme
  static final darkmodeTheme = ThemeData(
    textTheme: SLTextTheme.darkTextTheme,
    brightness: Brightness.dark,
    useMaterial3: true,
    filledButtonTheme: SLFilledButtonTheme.darkmodeFilledButtonTheme,
    outlinedButtonTheme: SLOutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: SLAppBarTheme.darkAppBarTheme,
    scaffoldBackgroundColor: black,
  );
}
