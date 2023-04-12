import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
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
      height: 64,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.appBarShadowColor.withOpacity(0.06),
                  offset: const Offset(0, 7),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: titleText != null
                    ? Text(
                        titleText!,
                        style: AppFonts.medium16,
                      )
                    : title,
              ),
            ),
          ),
          if (leading != null)
            Positioned(
              left: 16,
              bottom: 9,
              child: leading!,
            ),
          if (actions != null)
            Positioned(
              right: 8,
              bottom: 9,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: actions!
                    .map(
                      (action) => Padding(
                        padding: const EdgeInsets.only(right: 8),
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
  Size get preferredSize => const Size.fromHeight(64);
}
