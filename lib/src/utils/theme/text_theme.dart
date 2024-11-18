import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelp/src/utils/colors.dart';

class KelpTexTheme {
  KelpTexTheme._();

  //dark mode text theme
  static final darkModeTextTheme = TextTheme(
    bodySmall: GoogleFonts.poppins().copyWith(color: white, fontSize: 12),
    bodyMedium: GoogleFonts.poppins(
        color: white, fontSize: 15, fontWeight: FontWeight.w600),
    labelMedium: GoogleFonts.poppins(
        color: white, fontSize: 12, fontWeight: FontWeight.w400),
  );
}
