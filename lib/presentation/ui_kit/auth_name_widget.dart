import 'package:flutter/material.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthNameWidget extends StatelessWidget {
  const AuthNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 89),
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
            const SizedBox(height: 24),
            Text(
              l10n.howToCallYou,
              style: AppFonts.bold20_144_5,
            ),
            const SizedBox(height: 24),
            TextField(
              style: AppFonts.medium16_144_5,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
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
                hintText: l10n.name,
                hintStyle: AppFonts.regular16_144_5.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              style: AppFonts.medium16_144_5,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
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
                hintText: l10n.surname,
                hintStyle: AppFonts.regular16_144_5.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 61.5,
                  vertical: 16,
                ),
                child: Text(
                  l10n.continueCheckout,
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
