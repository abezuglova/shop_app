import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class BonusesWidget extends StatelessWidget {
  final Bonuses bonuses;
  const BonusesWidget({super.key, required this.bonuses});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.elementShadowColor.withOpacity(0.1),
            offset: const Offset(0, 10),
            blurRadius: 20,
            spreadRadius: -5,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Бонусные баллы', style: AppFonts.bold16_144_5),
              SvgIconButton(
                onPressed: () {},
                iconPath: AppIcons.questionMarkIcon,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '250 баллов',
                style: AppFonts.medium18_144_5.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
              Text(
                'Уровень 2',
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
