import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      padding: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.appBarShadowColor.withOpacity(0.06),
            offset: const Offset(0, -7),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.mainPageIcon,
                ),
                const SizedBox(height: 4),
                Text(
                  'Главная',
                  style: AppFonts.medium12_144_5.copyWith(
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.catalogIcon,
                ),
                const SizedBox(height: 4),
                Text(
                  'Каталог',
                  style: AppFonts.medium12_144_5.copyWith(
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.searchIcon,
                ),
                const SizedBox(height: 4),
                Text(
                  'Поиск',
                  style: AppFonts.medium12_144_5.copyWith(
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.shoppingCartNavIcon,
                ),
                const SizedBox(height: 4),
                Text(
                  'Корзина',
                  style: AppFonts.medium12_144_5.copyWith(
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.profileIcon,
                ),
                const SizedBox(height: 4),
                Text(
                  'Профиль',
                  style: AppFonts.medium12_144_5.copyWith(
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
