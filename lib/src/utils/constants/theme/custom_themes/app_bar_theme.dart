import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/utils/constants/colors.dart';

class SLAppBarTheme {
  SLAppBarTheme._();

  //light mode app bar theme
  static final lightAppBarTheme = AppBarTheme(
    backgroundColor: bgColor,
    titleTextStyle: GoogleFonts.poppins(fontSize: 17, color: white),
  );
  //dark app bar theme
  static final darkAppBarTheme = AppBarTheme(
    backgroundColor: black,
    titleTextStyle: GoogleFonts.poppins(fontSize: 17, color: black),
  );
}
