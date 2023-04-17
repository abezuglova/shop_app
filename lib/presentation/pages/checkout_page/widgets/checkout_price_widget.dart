import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CheckoutPriceWidget extends StatelessWidget {
  final Order order;
  const CheckoutPriceWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${order.productList.length} товара',
              style: AppFonts.regular18.copyWith(
                color: AppColors.secondaryTextColor,
              ),
            ),
            Text(
              '${order.generalPrice} р',
              style: AppFonts.regular18,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Скидка 10%',
              style: AppFonts.regular18.copyWith(
                color: AppColors.discountColor,
              ),
            ),
            Text(
              '-${order.generalDiscount} р',
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
              'Доставка',
              style: AppFonts.regular18.copyWith(
                color: AppColors.secondaryTextColor,
              ),
            ),
            Text(
              '${order.deliveryPrice} р',
              style: AppFonts.regular18,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Итого',
              style: AppFonts.semiBold24_144_5,
            ),
            Text(
              '${order.generalPrice} р',
              style: AppFonts.semiBold24_144_5,
            ),
          ],
        ),
      ],
    );
  }
}
