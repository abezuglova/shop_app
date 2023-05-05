import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/utils/app_colors.dart';

class BottomSheetLine extends StatelessWidget {
  const BottomSheetLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: AppColors.dividerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
      ),
    );
  }
}
