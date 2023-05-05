import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final Widget? title;
  final SvgIconButton? leading;
  final List<SvgIconButton>? actions;
  const CustomAppBar({
    super.key,
    this.titleText,
    this.title,
    this.leading,
    this.actions,
  }) : assert(titleText != null || title != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.appBarShadowColor.withOpacity(0.06),
                  offset: Offset(0, 7.h),
                  blurRadius: 15.r,
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(72.w, 0.h, 72.w, 10.h),
                child: titleText != null
                    ? Text(
                        titleText!,
                        style: AppFonts.medium16_144_5,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    : title,
              ),
            ),
          ),
          if (leading != null)
            Positioned(
              left: 16.w,
              bottom: 9.h,
              child: leading!,
            ),
          if (actions != null)
            Positioned(
              right: 8.w,
              bottom: 9.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: actions!
                    .map(
                      (action) => Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: action,
                      ),
                    )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64.h);
}
