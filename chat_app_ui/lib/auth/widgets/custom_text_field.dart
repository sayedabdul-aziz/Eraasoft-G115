import 'package:chat_app_ui/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.prefexIcon,
      this.suffixIcon,
      this.obscureText,
      this.validator});

  final String label;
  final IconData prefexIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: TextInputType.name,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon ?? const SizedBox(),
        prefixIcon: Icon(
          prefexIcon,
          color: AppColors.primary,
        ),
        label: Text(label),
        // hintText: 'Enter Your Name',
        // fillColor: AppColors.primary,
        // filled: true,
        // borders (All States)
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
            borderRadius: BorderRadius.circular(20)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
