import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/ui_kit/auth_name_widget.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthCodeWidget extends StatelessWidget {
  const AuthCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final decoration = InputDecoration(
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
    );
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
              l10n.confirmationCode,
              style: AppFonts.bold20_144_5,
            ),
            SizedBox(height: 8.h),
            Text(
              l10n.enterCode,
              style: AppFonts.regular16_144_5.copyWith(
                color: AppColors.secondaryTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 54.w,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                SizedBox(width: 16.w),
                SizedBox(
                  width: 54.w,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                SizedBox(width: 16.w),
                SizedBox(
                  width: 54.w,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                SizedBox(width: 16.w),
                SizedBox(
                  width: 54.w,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            TextButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                ),
                builder: (context) => const AuthNameWidget(),
              ),
              child: Text(
                l10n.getCodeAgain,
                style: AppFonts.medium16_144_5.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
