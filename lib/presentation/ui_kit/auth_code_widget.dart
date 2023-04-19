import 'package:flutter/material.dart';
import 'package:third_task/presentation/ui_kit/auth_name_widget.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthCodeWidget extends StatelessWidget {
  const AuthCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    const decoration = InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 19),
      fillColor: AppColors.offBackgroundColor2,
      filled: true,
    );
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
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
            const SizedBox(height: 24),
            Text(
              l10n.confirmationCode,
              style: AppFonts.bold20_144_5,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.enterCode,
              style: AppFonts.regular16_144_5.copyWith(
                color: AppColors.secondaryTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 54,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 54,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 54,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 54,
                  child: TextField(
                    style: AppFonts.medium16_144_5,
                    textAlign: TextAlign.center,
                    decoration: decoration,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                builder: (context) => const AuthNameWidget(),
              ),
              child: Text(
                l10n.getCodeAgain,
                style: AppFonts.medium16_144_5.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
