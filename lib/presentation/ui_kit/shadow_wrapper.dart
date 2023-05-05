import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/utils/app_colors.dart';

class ShadowWrapper extends StatelessWidget {
  final Widget child;
  const ShadowWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 73.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.appBarShadowColor.withOpacity(0.06),
                  offset: Offset(0, -7.h),
                  blurRadius: 15.r,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
