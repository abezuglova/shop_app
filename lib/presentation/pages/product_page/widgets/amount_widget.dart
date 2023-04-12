import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

class AmountWidget extends StatefulWidget {
  final Product product;
  const AmountWidget({super.key, required this.product});

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: AppColors.offBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.product.amount,
                    style: AppFonts.medium13.copyWith(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.elementShadowColor.withOpacity(0.15),
                      offset: const Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: -5,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.product.amount,
                        style: AppFonts.medium13,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '-${widget.product.discount}',
                        style: AppFonts.medium13.copyWith(
                          color: AppColors.discountColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
