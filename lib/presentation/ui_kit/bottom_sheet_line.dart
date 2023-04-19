import 'package:flutter/material.dart';
import 'package:third_task/presentation/utils/app_colors.dart';

class BottomSheetLine extends StatelessWidget {
  const BottomSheetLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39,
      height: 4,
      decoration: const BoxDecoration(
        color: AppColors.dividerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
