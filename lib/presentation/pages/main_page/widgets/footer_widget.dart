import 'package:flutter/material.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 167,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    l10n.aboutCompany,
                    style: AppFonts.semiBold18_144_5.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 173,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    l10n.aboutOrganic,
                    style: AppFonts.semiBold18_144_5.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.delivery,
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.payment,
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.help,
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.certificates,
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
