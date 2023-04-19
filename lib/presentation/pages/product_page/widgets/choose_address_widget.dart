import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseAddressWidget extends StatelessWidget {
  const ChooseAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetLine(),
          const SizedBox(height: 16),
          SvgPicture.asset(
            AppIcons.deliveryIcon,
          ),
          const SizedBox(height: 4),
          Text(
            l10n.enterAddress,
            style: AppFonts.bold18_144_5,
          ),
          const SizedBox(height: 4),
          Text(
            l10n.enterAddressForDelivery,
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 107.5,
                vertical: 16,
              ),
              child: Text(
                l10n.chooseAddress,
                style: AppFonts.semiBold18_144_5.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
