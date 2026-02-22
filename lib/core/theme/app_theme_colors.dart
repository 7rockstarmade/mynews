import 'package:flutter/material.dart';

@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  const AppThemeColors({
    required this.title,
    required this.bodyText,
    required this.buttonText,
    required this.placeholder,
    required this.button,
    required this.inputDisabled,
    required this.input,
    required this.success,
    required this.warning,
  });

  final Color title;
  final Color bodyText;
  final Color buttonText;
  final Color placeholder;

  final Color button;
  final Color inputDisabled;
  final Color input;

  final Color success;
  final Color warning;

  @override
  AppThemeColors copyWith({
    Color? title,
    Color? bodyText,
    Color? buttonText,
    Color? placeholder,
    Color? button,
    Color? inputDisabled,
    Color? input,
    Color? success,
    Color? warning,
  }) {
    return AppThemeColors(
      title: title ?? this.title,
      bodyText: bodyText ?? this.bodyText,
      buttonText: buttonText ?? this.buttonText,
      placeholder: placeholder ?? this.placeholder,
      button: button ?? this.button,
      inputDisabled: inputDisabled ?? this.inputDisabled,
      input: input ?? this.input,
      success: success ?? this.success,
      warning: warning ?? this.warning,
    );
  }

  @override
  AppThemeColors lerp(ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) return this;
    return AppThemeColors(
      title: Color.lerp(title, other.title, t)!,
      bodyText: Color.lerp(bodyText, other.bodyText, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      placeholder: Color.lerp(placeholder, other.placeholder, t)!,
      button: Color.lerp(button, other.button, t)!,
      inputDisabled: Color.lerp(inputDisabled, other.inputDisabled, t)!,
      input: Color.lerp(input, other.input, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }
}
