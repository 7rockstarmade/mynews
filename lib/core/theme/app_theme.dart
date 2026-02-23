import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_theme_colors.dart';

class AppTheme {
  static ThemeData light() {
    const scheme = ColorScheme.light(
      primary: AppColors.primary,
      error: AppColors.error,
      surface: Colors.white,
      onSurface: AppColors.titleActive,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: GoogleFonts.poppinsTextTheme(AppTextStyles.baseTextTheme),
      extensions: const [
        AppThemeColors(
          title: AppColors.titleActive,
          bodyText: AppColors.bodyText,
          buttonText: AppColors.buttonText,
          placeholder: AppColors.placeholder,
          button: AppColors.button,
          inputDisabled: AppColors.disabledInput,
          input: AppColors.button,
          success: AppColors.success,
          warning: AppColors.warning,
        ),
      ],
    );
  }

  static ThemeData dark() {
    const scheme = ColorScheme.dark(
      primary: AppColors.primary,
      error: AppColors.error,
      surface: AppColors.darkInput,
      onSurface: AppColors.darkTitle,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: GoogleFonts.poppinsTextTheme(AppTextStyles.baseTextTheme),
      extensions: const [
        AppThemeColors(
          title: AppColors.darkTitle,
          bodyText: AppColors.darkBodyText,
          buttonText: AppColors.darkBodyText,
          placeholder: AppColors.darkBodyText,
          button: AppColors.darkInput,
          inputDisabled: AppColors.darkInput,
          input: AppColors.darkInput,
          success: AppColors.success,
          warning: AppColors.warning,
        ),
      ],
    );
  }
}
