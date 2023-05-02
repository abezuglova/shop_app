import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class SummaryWidget extends StatelessWidget {
  final ShoppingCart shoppingCart;
  const SummaryWidget({super.key, required this.shoppingCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${shoppingCart.products.length} товара',
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
