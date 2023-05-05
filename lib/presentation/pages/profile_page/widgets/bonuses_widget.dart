import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BonusesWidget extends StatelessWidget {
  final Bonuses bonuses;
  const BonusesWidget({super.key, required this.bonuses});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 18.h,
      ),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.elementShadowColor.withOpacity(0.1),
            offset: Offset(0, 10.h),
            blurRadius: 20.r,
            spreadRadius: -5.r,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                l10n.bonuses,
                style: AppFonts.bold16_144_5,
              ),
              SvgIconButton(
                onPressed: () {},
                iconPath: AppIcons.questionMarkIcon,
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.nPoints(250),
                style: AppFonts.medium18_144_5.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
              Text(
                '${l10n.level} 2',
                style: AppFonts.regular16_144_5.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
