import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class BrandWidget extends StatelessWidget {
  final String brand;
  const BrandWidget({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
        color: AppColors.offBackgroundColor2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Бренд "$brand"',
              style: AppFonts.medium16_132_5,
            ),
            SvgPicture.asset(AppIcons.chevronRightIcon),
          ],
        ),
      ),
    );
  }
}
