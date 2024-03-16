import 'package:flutter/material.dart';
import 'package:taskati_3_4/core/utils/colors.dart';

class CustomMiniButton extends StatelessWidget {
  const CustomMiniButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        extendedPadding:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        label: Text(text),
      ),
    );
  }
}
