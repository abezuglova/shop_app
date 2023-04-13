import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';

class SortingWidget extends StatefulWidget {
  const SortingWidget({super.key});

  @override
  State<SortingWidget> createState() => _SortingWidgetState();
}

class _SortingWidgetState extends State<SortingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '12 товаров',
            style: AppFonts.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'По дате добавления',
                style: AppFonts.regular14,
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(AppIcons.arrowDownIcon),
            ],
          ),
        ],
      ),
    );
  }
}
