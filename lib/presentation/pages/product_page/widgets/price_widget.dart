import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_icons.dart';

class PriceWidget extends StatelessWidget {
  final String price;
  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.navBarShadowColor.withOpacity(0.06),
            offset: const Offset(0, -7),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Text(price),
                  Positioned(
                    left: 1.71,
                    top: 13,
                    child: Transform.rotate(
                      angle: -6.71 * pi / 180,
                      child: Container(
                        width: 85.59,
                        height: 1.4,
                        color: AppColors.discountColor,
                      ),
                    ),
                  ),
                ],
              ),
              Text(price),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.shoppingCartIcon,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 8),
                  Text('В корзину'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
