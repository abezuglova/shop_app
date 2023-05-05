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
        children: [
          _CustomBottomNavBarItem(
            title: tabs[0].title,
            iconPath: tabs[0].iconPath,
            onTap: () => onTap(0),
            isSelected: currentIndex == 0,
          ),
          _CustomBottomNavBarItem(
            title: tabs[1].title,
            iconPath: tabs[1].iconPath,
            onTap: () => onTap(1),
            isSelected: currentIndex == 1,
          ),
          _CustomBottomNavBarItem(
            title: tabs[2].title,
            iconPath: tabs[2].iconPath,
            onTap: () => onTap(2),
            isSelected: currentIndex == 2,
          ),
          Badge(
            backgroundColor: AppColors.discountColor,
            textColor: Colors.white,
            textStyle: AppFonts.bold11,
            smallSize: 0,
            largeSize: 16.r,
            child: _CustomBottomNavBarItem(
              title: tabs[3].title,
              iconPath: tabs[3].iconPath,
              onTap: () => onTap(3),
              isSelected: currentIndex == 3,
            ),
          ),
          _CustomBottomNavBarItem(
            title: tabs[4].title,
            iconPath: tabs[4].iconPath,
            onTap: () => onTap(4),
            isSelected: currentIndex == 4,
          ),
        ],
        // children: tabs
        //     .mapIndexed(
        //       (index, element) => _CustomBottomNavBarItem(
        //         title: element.title,
        //         iconPath: element.iconPath,
        //         onTap: () => onTap(index),
        //         isSelected: currentIndex == index,
        //       ),
        //     )
        //     .toList(),
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
