import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextTheme baseTextTheme = TextTheme(
    // display
    displayLarge: GoogleFonts.poppins(
      fontSize: 48,
      height: 72,
      letterSpacing: 0.12,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 32,
      height: 48,
      letterSpacing: 0.12,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24,
      height: 36,
      letterSpacing: 0.12,
    ),

    // text
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      height: 30,
      letterSpacing: 0.12,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      height: 24,
      letterSpacing: 0.12,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      height: 21,
      letterSpacing: 0.12,
    ),

    // text x-small
    bodySmall: GoogleFonts.poppins(
      fontSize: 13,
      height: 19.5,
      letterSpacing: 0.12,
    ),
  );
}
