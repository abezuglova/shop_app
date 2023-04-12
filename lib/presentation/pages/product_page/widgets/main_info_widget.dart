import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/assets/app_images.dart';

class MainInfoWidget extends StatelessWidget {
  final Product product;
  const MainInfoWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5.5),
              decoration: const BoxDecoration(
                color: AppColors.discountColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(product.discount),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.fromLTRB(4, 5, 8, 5),
              decoration: const BoxDecoration(
                color: AppColors.brandColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                children: const [
                  Image(
                    image: AssetImage(
                      AppImages.organicSign,
                    ),
                  ),
                  Text(
                    'Органик',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.fromLTRB(4, 3.43, 8, 3.43),
              decoration: const BoxDecoration(
                color: AppColors.deliveryColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                children: const [
                  Image(
                    image: AssetImage(
                      AppImages.deliverySign,
                    ),
                  ),
                  Text(
                    'Экспресс-доставка',
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          product.name,
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            SvgPicture.asset(AppIcons.deliveryIcon),
            const SizedBox(width: 8),
            const Text(
              'Ближайшая дата доставки: завтра утром',
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
