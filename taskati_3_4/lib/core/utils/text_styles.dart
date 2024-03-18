import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskati_3_4/core/utils/colors.dart';

TextStyle getTitleStyle(context,
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Theme.of(context).colorScheme.onSurface);
}

TextStyle getBodyStyle(context,
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: fontSize ?? 16,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Theme.of(context).colorScheme.onSurface);
}

TextStyle getSmallStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: fontSize ?? 14,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? AppColors.grey);
}
