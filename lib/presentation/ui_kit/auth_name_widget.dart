import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthNameWidget extends StatelessWidget {
  const AuthNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
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
            SizedBox(height: 24.h),
            Text(
              l10n.howToCallYou,
              style: AppFonts.bold20_144_5,
            ),
            SizedBox(height: 24.h),
            TextField(
              style: AppFonts.medium16_144_5,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 19.h,
                ),
                fillColor: AppColors.offBackgroundColor2,
                filled: true,
                hintText: l10n.name,
                hintStyle: AppFonts.regular16_144_5.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            TextField(
              style: AppFonts.medium16_144_5,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 19.h,
                ),
                fillColor: AppColors.offBackgroundColor2,
                filled: true,
                hintText: l10n.surname,
                hintStyle: AppFonts.regular16_144_5.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 61.5.w,
                  vertical: 16.h,
                ),
                child: Text(
                  l10n.continueCheckout,
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
