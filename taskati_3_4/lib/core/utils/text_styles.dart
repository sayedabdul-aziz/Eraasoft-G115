import 'package:flutter/material.dart';
import 'package:taskati_3_4/core/utils/colors.dart';

TextStyle getTitleStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      // fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? AppColors.black);
}

TextStyle getBodyStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: fontSize ?? 16,
      // fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? AppColors.black);
}

TextStyle getSmallStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: fontSize ?? 14,
      // fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? AppColors.grey);
}
