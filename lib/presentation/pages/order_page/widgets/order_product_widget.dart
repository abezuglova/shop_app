import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

class OrderProductWidget extends StatelessWidget {
  final Product product;
  const OrderProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.5),
          child: Row(
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
                      children: [
                        Text(
                          product.price,
                          style: AppFonts.semiBold16_144_5,
                        ),
                        Text(
                          '${product.amount} шт',
                          style: AppFonts.regular16_144_5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.offBackgroundColor2,
        ),
      ],
    );
  }
}
