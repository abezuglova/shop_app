import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_colors.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5.5),
              decoration: const BoxDecoration(
                color: AppColors.discountColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text('-50%'),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5.5),
              decoration: const BoxDecoration(
                color: AppColors.organicColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text('-50%'),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5.5),
              decoration: const BoxDecoration(
                color: AppColors.deliveryColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text('-50%'),
            ),
          ],
        ),
      ],
    );
  }
}
