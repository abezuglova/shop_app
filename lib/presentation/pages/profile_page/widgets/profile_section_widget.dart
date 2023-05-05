import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/pages/profile_page/screens/profile_screen.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class ProfileSectionWidget extends StatelessWidget {
  final SectionNavigationData section;
  const ProfileSectionWidget({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(section.location),
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              section.name,
              style: AppFonts.regular16_144_5,
            ),
            SvgPicture.asset(AppIcons.chevronRightIcon),
          ],
        ),
      ),
    );
  }
}
