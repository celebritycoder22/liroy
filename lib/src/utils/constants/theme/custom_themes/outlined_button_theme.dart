import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/utils/constants/colors.dart';

class SLOutlinedButtonTheme {
  SLOutlinedButtonTheme._();

  //light mode outlined button theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: const WidgetStatePropertyAll(Size(100, 35)),
      side: const WidgetStatePropertyAll(BorderSide(color: black)),
      shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      textStyle: WidgetStatePropertyAll(GoogleFonts.poppins(color: black)),
    ),
  );

  //light mode outlined button theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: const WidgetStatePropertyAll(Size(100, 35)),
      side: const WidgetStatePropertyAll(BorderSide(color: white)),
      shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      textStyle: WidgetStatePropertyAll(GoogleFonts.poppins(color: white)),
    ),
  );
}
