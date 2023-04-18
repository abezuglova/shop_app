import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SectionsWidget extends StatelessWidget {
  const SectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final decoration = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.elementShadowColor.withOpacity(0.1),
          offset: const Offset(0, 10),
          blurRadius: 20,
          spreadRadius: -5,
        ),
      ],
    );
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go('/catalog/discounts'),
                  child: Container(
                    height: 54,
                    decoration: decoration,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            AppIcons.percentIcon,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            l10n.discounts,
                            style: AppFonts.regular16_135,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go('/catalog/favorites'),
                  child: Container(
                    height: 54,
                    decoration: decoration,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            AppIcons.redLikeIcon,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            l10n.favorites,
                            style: AppFonts.regular16_135,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => context.go('/catalog/already_bought'),
            child: Container(
              height: 54,
              decoration: decoration,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.smallShoppingCartIcon,
                      colorFilter: const ColorFilter.mode(
                        AppColors.mainGreen,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      l10n.alreadyBought,
                      style: AppFonts.regular16_135,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
