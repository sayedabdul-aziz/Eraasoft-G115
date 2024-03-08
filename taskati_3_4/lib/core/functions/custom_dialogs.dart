import 'package:flutter/material.dart';
import 'package:taskati_3_4/core/utils/colors.dart';

showErrorDialog(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: AppColors.red, content: Text(text)));
}
