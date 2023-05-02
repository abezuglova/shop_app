import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SummaryWidget extends StatelessWidget {
  final ShoppingCart shoppingCart;
  const SummaryWidget({super.key, required this.shoppingCart});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.nProducts(shoppingCart.products.length),
                style: AppFonts.regular18.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
              Text(
                '${shoppingCart.generalPrice} р',
                style: AppFonts.regular18,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Скидка ${shoppingCart.discount}',
                style: AppFonts.regular18.copyWith(
                  color: AppColors.discountColor,
                ),
              ),
              Text(
                '-${shoppingCart.generalDiscount} р',
                style: AppFonts.regular18.copyWith(
                  color: AppColors.discountColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
