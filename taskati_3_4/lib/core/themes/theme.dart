import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskati_3_4/core/utils/colors.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';

class AppThemes {
  static ThemeData appLightTheme = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white, foregroundColor: AppColors.primary),
      colorScheme: ColorScheme.fromSeed(
          primary: AppColors.primary,
          // secondary: ,
          background: AppColors.white,
          // text
          onSurface: AppColors.black,
          error: AppColors.red,
          seedColor: AppColors.primary),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: AppColors.white,
      ),
      timePickerTheme: TimePickerThemeData(backgroundColor: AppColors.white),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: getSmallStyle(),
          prefixIconColor: AppColors.primary,
          suffixIconColor: AppColors.primary,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.red))));
  static ThemeData appDarkTheme = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: AppColors.darkBackground,
      datePickerTheme:
          DatePickerThemeData(backgroundColor: AppColors.darkBackground),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkBackground,
          foregroundColor: AppColors.primary),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: AppColors.darkBackground,
        dialBackgroundColor: AppColors.darkBackground,
        
      ),
      colorScheme: ColorScheme.fromSeed(
          primary: AppColors.primary,
          background: AppColors.darkBackground,
          // text
          onSurface: AppColors.white,
          seedColor: AppColors.primary),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: getSmallStyle(),
          prefixIconColor: AppColors.primary,
          suffixIconColor: AppColors.primary,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primary)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.red))));
}
