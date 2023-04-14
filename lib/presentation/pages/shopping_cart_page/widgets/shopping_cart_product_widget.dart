import 'dart:math';

import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ShoppingCartProductWidget extends StatelessWidget {
  final Product product;
  const ShoppingCartProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Image.network(
              product.images[0],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.regular14_132_5,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          product.price,
                          style: AppFonts.semiBold16.copyWith(
                            color: AppColors.discountColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Stack(
                          children: [
                            Text(
                              product.price,
                              style: AppFonts.regular14.copyWith(
                                color: AppColors.enabledTextColor,
                              ),
                            ),
                            Positioned(
                              top: 11.5,
                              child: Transform.rotate(
                                angle: -7.25 * pi / 180,
                                child: Container(
                                  width: 55.44,
                                  height: 1.4,
                                  color: AppColors.discountColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 104,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.offBackgroundColor2,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 7.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgIconButton(
                              onPressed: () {},
                              iconPath: AppIcons.minusIcon,
                            ),
                            Text(
                              product.amount,
                              style: AppFonts.regular12,
                            ),
                            SvgIconButton(
                              onPressed: () {},
                              iconPath: AppIcons.plusIcon,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
