import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class DiscountsScreen extends StatelessWidget {
  final List<Product> discountProducts;
  const DiscountsScreen({super.key, required this.discountProducts});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: GridView.builder(
        padding: const EdgeInsets.fromLTRB(16, 25, 16, 89),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 168 / 240,
          crossAxisSpacing: 8,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => ProductCardWidget(
          product: discountProducts[index],
        ),
        itemCount: discountProducts.length,
      ),
    );
  }
}
