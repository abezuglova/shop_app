import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/custom_text_field.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalDataScreen extends StatelessWidget {
  final PersonalData personalData;
  const PersonalDataScreen({super.key, required this.personalData});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 32.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  labelText: l10n.name,
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  labelText: l10n.surname,
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  labelText: l10n.birthDate,
                  suffixIcon: SvgIconButton(
                    onPressed: () {},
                    iconPath: AppIcons.calenderIcon,
                  ),
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  labelText: l10n.phone,
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  labelText: l10n.eMail,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 89.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: Offset(0, -7.h),
                  blurRadius: 15.r,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 127.w,
                  vertical: 16.h,
                ),
                child: Text(
                  l10n.save,
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
