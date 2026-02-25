import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextTheme baseTextTheme = TextTheme(
    // display
    displayLarge: GoogleFonts.poppins(
      fontSize: 48,
      height: 1.5,
      letterSpacing: 0.12,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 32,
      height: 1.5,
      letterSpacing: 0.12,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24,
      height: 1.5,
      letterSpacing: 0.12,
    ),

    // text
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      height: 1.5,
      letterSpacing: 0.12,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.12,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0.12,
    ),

    // text x-small
    bodySmall: GoogleFonts.poppins(
      fontSize: 13,
      height: 1.5,
      letterSpacing: 0.12,
    ),
  );
}
