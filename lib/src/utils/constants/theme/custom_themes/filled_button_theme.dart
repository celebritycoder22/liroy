import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/utils/constants/colors.dart';

class SLFilledButtonTheme {
  SLFilledButtonTheme._();

  //light mode filled button Theme
  static final ligntmodeFilledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(black),
        fixedSize: const WidgetStatePropertyAll(Size(125.86, 10.65)),
        minimumSize: const WidgetStatePropertyAll(Size(140.86, 34.65)),
        shape: const WidgetStatePropertyAll(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)))),
        textStyle: WidgetStatePropertyAll(
            GoogleFonts.poppins(fontWeight: FontWeight.bold))),
  );

  //dark mode filled button Theme
  static final darkmodeFilledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(white),
        fixedSize: const WidgetStatePropertyAll(Size(125.86, 10.65)),
        minimumSize: const WidgetStatePropertyAll(Size(140.86, 34.65)),
        shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)))),
        textStyle: WidgetStatePropertyAll(
            GoogleFonts.poppins(fontWeight: FontWeight.bold))),
  );
}
