import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseAddressWidget extends StatelessWidget {
  const ChooseAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 89.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetLine(),
          SizedBox(height: 16.h),
          SvgPicture.asset(
            AppIcons.deliveryIcon,
          ),
          SizedBox(height: 4.h),
          Text(
            l10n.enterAddress,
            style: AppFonts.bold18_144_5,
          ),
          SizedBox(height: 4.h),
          Text(
            l10n.enterAddressForDelivery,
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 107.5.w,
                vertical: 16.h,
              ),
              child: Text(
                l10n.chooseAddress,
                style: AppFonts.semiBold18_144_5.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
