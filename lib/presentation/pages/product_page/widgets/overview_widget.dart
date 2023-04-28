import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OverviewWidget extends StatefulWidget {
  final Product product;
  const OverviewWidget({super.key, required this.product});

  @override
  State<OverviewWidget> createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends State<OverviewWidget> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 0,
                ),
                child: Text(
                  l10n.description,
                  style: _selectedTab == 0
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5
                          .copyWith(color: AppColors.enabledTextColor),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 1,
                ),
                child: Text(
                  l10n.characteristics,
                  style: _selectedTab == 1
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5
                          .copyWith(color: AppColors.enabledTextColor),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 2,
                ),
                child: Text(
                  l10n.reviews,
                  style: _selectedTab == 2
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5
                          .copyWith(color: AppColors.enabledTextColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          IndexedStack(
            index: _selectedTab,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.product.description,
                  style: AppFonts.regular16_160_5.copyWith(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.product.characteristics,
                  style: AppFonts.regular16_160_5.copyWith(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.product.reviews,
                  style: AppFonts.regular16_160_5.copyWith(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
