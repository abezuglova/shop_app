import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/custom_text_field.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckoutFieldsWidget extends StatefulWidget {
  final Order order;
  const CheckoutFieldsWidget({super.key, required this.order});

  @override
  State<CheckoutFieldsWidget> createState() => _CheckoutFieldsWidgetState();
}

class _CheckoutFieldsWidgetState extends State<CheckoutFieldsWidget> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        CustomTextField(
          labelText: l10n.deliveryAddress,
          suffixIcon: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronRightIcon,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 36,
            maxHeight: 36,
          ),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          labelText: l10n.deliveryDateTime,
          suffixIcon: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronRightIcon,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 36,
            maxHeight: 36,
          ),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          labelText: l10n.paymentMethod,
          suffixIcon: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronRightIcon,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 36,
            maxHeight: 36,
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
                  l10n.writeOffPoints,
                  style: AppFonts.regular16_144_5,
                ),
                const SizedBox(width: 4),
                SvgIconButton(
                  onPressed: () {},
                  iconPath: AppIcons.questionMarkIcon,
                ),
              ],
            ),
            FlutterSwitch(
              onToggle: (bool value) {
                setState(
                  () {
                    light = value;
                  },
                );
              },
              value: light,
              width: 44,
              height: 24,
              activeColor: AppColors.mainGreen,
              inactiveColor: AppColors.offBackgroundColor2,
              toggleSize: 16,
              toggleBorder: Border.all(
                color: AppColors.elementShadowColor.withOpacity(0.15),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        CustomTextField(
          labelText: l10n.comment,
        ),
      ],
    );
  }
}
