import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BrandWidget extends StatelessWidget {
  final String brand;
  const BrandWidget({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 27.w,
          vertical: 20.h,
        ),
        color: AppColors.offBackgroundColor2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${l10n.brand} "$brand"',
              style: AppFonts.medium16_132_5,
            ),
            SvgPicture.asset(AppIcons.chevronRightIcon),
          ],
        ),
      ),
    );
  }
}
