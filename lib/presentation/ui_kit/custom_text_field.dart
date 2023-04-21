import 'package:flutter/material.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  Widget? suffixIcon;
  BoxConstraints? suffixIconConstraints;
  CustomTextField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.suffixIconConstraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
        color: AppColors.offBackgroundColor2,
      ),
      child: TextField(
        style: AppFonts.medium16_144_5,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          labelText: labelText,
          labelStyle: AppFonts.regular16_144_5.copyWith(
            color: AppColors.secondaryTextColor,
          ),
          floatingLabelStyle: AppFonts.regular13_144_5.copyWith(
            color: AppColors.secondaryTextColor,
          ),
          suffixIcon: suffixIcon,
          suffixIconConstraints: suffixIconConstraints,
        ),
      ),
    );
  }
}
