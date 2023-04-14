import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

class ShoppingCartOrderScreen extends StatelessWidget {
  final Order order;
  const ShoppingCartOrderScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Заказ успешно оформлен',
            style: AppFonts.medium24_144_5,
          ),
          const SizedBox(height: 9),
          Text(
            'Номер заказа: ${order.number}',
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          Text(
            '${order.productList.length} товара на сумму ${order.generalPrice} р.',
            style: AppFonts.regular14_144_5.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          const SizedBox(height: 9),
          TextButton(
            onPressed: () {},
            child: Text(
              'Открыть детали заказа',
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
                'Продолжить покупки',
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
