import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';

class ProductTypeWidget extends StatelessWidget {
  final ProductType productType;
  const ProductTypeWidget({super.key, required this.productType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            productType.name,
            style: AppFonts.yesevaRegular18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: GridView.count(
            childAspectRatio: 168 / 240,
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 16,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: productType.products
                .map(
                  (product) => ProductCardWidget(product: product),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
