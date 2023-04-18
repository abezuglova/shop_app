import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCartOrderScreen extends StatelessWidget {
  final Order order;
  const ShoppingCartOrderScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.orderIsSuccessfullyCreated,
            style: AppFonts.medium24_144_5,
          ),
          const SizedBox(height: 9),
          Text(
            '${l10n.orderNumber}: ${order.number}',
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          Text(
            '${l10n.nProducts(order.productList.length)} ${l10n.onSum} ${order.generalPrice} р.',
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          const SizedBox(height: 9),
          TextButton(
            onPressed: () {},
            child: Text(
              l10n.openOrderDetails,
              style: AppFonts.medium13_144_5.copyWith(
                color: AppColors.mainGreen,
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                l10n.continueShopping,
                style: AppFonts.semiBold16_144_5.copyWith(
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
