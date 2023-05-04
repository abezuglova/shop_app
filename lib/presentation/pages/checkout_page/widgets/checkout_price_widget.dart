import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckoutPriceWidget extends StatelessWidget {
  final ShoppingCart shoppingCart;
  final double deliveryPrice;
  const CheckoutPriceWidget({
    super.key,
    required this.shoppingCart,
    required this.deliveryPrice,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
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
              '${l10n.discount} 10%',
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
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.delivery,
              style: AppFonts.regular18.copyWith(
                color: AppColors.secondaryTextColor,
              ),
            ),
            Text(
              '$deliveryPrice р',
              style: AppFonts.regular18,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.total,
              style: AppFonts.semiBold24_144_5,
            ),
            Text(
              '${shoppingCart.generalPrice + deliveryPrice} р',
              style: AppFonts.semiBold24_144_5,
            ),
          ],
        ),
      ],
    );
  }
}
