import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/pages/profile_page/widgets/bonuses_widget.dart';
import 'package:third_task/presentation/pages/profile_page/widgets/profile_section_widget.dart';

class ProfileScreen extends StatelessWidget {
  final PersonalData personalData;
  final Bonuses bonuses;
  const ProfileScreen({
    super.key,
    required this.personalData,
    required this.bonuses,
  });

  @override
  Widget build(BuildContext context) {
    final sections = [
      'Личные данные',
      'Мои заказы',
      'Мои адреса',
      'Способы оплаты',
      'Связаться с нами',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  personalData.name,
                  style: AppFonts.medium24_144_5,
                ),
                Text(
                  personalData.phone,
                  style: AppFonts.medium18_144_5.copyWith(
                    color: AppColors.phoneColor,
                  ),
                ),
              ],
            ),
          ),
          BonusesWidget(
            bonuses: bonuses,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: sections
                  .map(
                    (section) => ProfileSectionWidget(
                      section: section,
                    ),
                  )
                  .toList(),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.exitIcon),
                  const SizedBox(width: 10),
                  Text(
                    'Выйти',
                    style: AppFonts.medium18_144_5.copyWith(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
