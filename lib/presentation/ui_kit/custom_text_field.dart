import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4.r),
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
          floatingLabelStyle: AppFonts.regular16_144_5.copyWith(
            color: AppColors.secondaryTextColor,
          ),
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(
            maxWidth: 36.r,
            maxHeight: 36.r,
          ),
        ),
      ),
    );
  }
}
