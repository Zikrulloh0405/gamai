import "package:flutter/material.dart";
import "app_colors.dart";

@immutable
class AppTextStyle extends TextTheme {
  const AppTextStyle();

  @override
  TextStyle? get bodyLarge => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: 0.1,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get bodyMedium => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get bodySmall => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 6,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get displayLarge => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 62,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get displayMedium => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 42,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get displaySmall => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        fontFamily: "Poppins",
        color: AppColors.black,
      );

  @override
  TextStyle? get headlineLarge => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 32,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get headlineMedium => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 26,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get headlineSmall => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get labelLarge => const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get labelMedium => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get labelSmall => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get titleLarge => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get titleMedium => const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: AppColors.black,
        fontFamily: "Poppins",
      );

  @override
  TextStyle? get titleSmall => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: AppColors.black,
        fontFamily: "Poppins",
      );
}
