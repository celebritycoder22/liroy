import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/utils/constants/colors.dart';

class SLTextTheme {
  SLTextTheme._();

  //lIght mode text theme
  static final lightTextTheme = TextTheme(
    headlineMedium: GoogleFonts.poppins(fontSize: 17, color: black),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: black),
    bodySmall: GoogleFonts.poppins(fontSize: 12, color: black),
    labelSmall: GoogleFonts.poppins(fontSize: 12, color: black),
    labelMedium: GoogleFonts.poppins(fontSize: 12, color: black),
    titleMedium: GoogleFonts.poppins(
        fontSize: 15, color: black, fontWeight: FontWeight.bold),
  );

  //dark text theme
  static final darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.poppins(fontSize: 17, color: white),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: white),
    bodySmall: GoogleFonts.poppins(fontSize: 12, color: white),
    labelSmall: GoogleFonts.poppins(fontSize: 12, color: white),
    labelMedium: GoogleFonts.poppins(fontSize: 12, color: white),
    titleMedium: GoogleFonts.poppins(
        fontSize: 15, color: white, fontWeight: FontWeight.bold),
  );
}
