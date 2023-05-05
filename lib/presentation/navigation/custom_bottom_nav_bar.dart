import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/navigation/scaffold_with_bottom_nav_bar.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CustomBottomNavBar extends StatelessWidget {
  final void Function(int index) onTap;
  final int currentIndex;
  final List<CustomNavBarItemData> tabs;
  const CustomBottomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.h,
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tabs
            .mapIndexed(
              (index, element) => _CustomBottomNavBarItem(
                title: element.title,
                iconPath: element.iconPath,
                onTap: () => onTap(index),
                isSelected: currentIndex == index,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _CustomBottomNavBarItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final void Function() onTap;
  final bool isSelected;
  const _CustomBottomNavBarItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.mainGreen : AppColors.bottomNavBarColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: AppFonts.medium12_144_5.copyWith(
              color: isSelected
                  ? AppColors.mainGreen
                  : AppColors.bottomNavBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
