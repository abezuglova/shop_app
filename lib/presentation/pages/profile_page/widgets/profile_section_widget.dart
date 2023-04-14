import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';

class ProfileSectionWidget extends StatelessWidget {
  final String section;
  const ProfileSectionWidget({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              section,
              style: AppFonts.regular16_144_5,
            ),
            SvgPicture.asset(AppIcons.chevronRightIcon),
          ],
        ),
      ),
    );
  }
}
