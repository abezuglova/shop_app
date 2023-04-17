import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class CheckoutFieldsWidget extends StatelessWidget {
  final Order order;
  const CheckoutFieldsWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: AppFonts.medium16_144_5,
          decoration: _getTextFieldDecoration(
            'Адрес доставки',
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgIconButton(
                onPressed: () {},
                iconPath: AppIcons.chevronRightIcon,
              ),
            ),
            const BoxConstraints(
              maxWidth: 36,
              maxHeight: 36,
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          style: AppFonts.medium16_144_5,
          decoration: _getTextFieldDecoration(
            'Дата и время доставки',
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgIconButton(
                onPressed: () {},
                iconPath: AppIcons.chevronRightIcon,
              ),
            ),
            const BoxConstraints(
              maxWidth: 36,
              maxHeight: 36,
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          style: AppFonts.medium16_144_5,
          decoration: _getTextFieldDecoration(
            'Способ оплаты',
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgIconButton(
                onPressed: () {},
                iconPath: AppIcons.chevronRightIcon,
              ),
            ),
            const BoxConstraints(
              maxWidth: 36,
              maxHeight: 36,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Списать баллы',
                  style: AppFonts.regular16_144_5,
                ),
                const SizedBox(width: 4),
                SvgIconButton(
                  onPressed: () {},
                  iconPath: AppIcons.questionMarkIcon,
                ),
              ],
            ),
            Container(
              width: 44,
              height: 24,
              decoration: const BoxDecoration(
                color: AppColors.offBackgroundColor2,
                borderRadius: BorderRadius.all(
                  Radius.circular(32.56),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        TextField(
          style: AppFonts.medium16_144_5,
          decoration: _getTextFieldDecoration(
            'Комментарий',
          ),
        ),
      ],
    );
  }

  InputDecoration _getTextFieldDecoration(
    String labelText, [
    Widget? suffixIcon,
    BoxConstraints? suffixIconConstraints,
  ]) =>
      InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 19),
        fillColor: AppColors.offBackgroundColor2,
        filled: true,
        labelText: labelText,
        labelStyle: AppFonts.regular16_144_5.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        floatingLabelStyle: AppFonts.regular13_144_5.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints,
      );
}
