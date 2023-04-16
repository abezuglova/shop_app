import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class SummaryWidget extends StatelessWidget {
  final List<Product> products;
  const SummaryWidget({super.key, required this.products});

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
                '${products.length} товара',
                style: AppFonts.regular18.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
              Text(
                '1850 р',
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
                '-150 р',
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
