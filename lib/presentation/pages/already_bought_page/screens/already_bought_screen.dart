import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';

class AlreadyBoughtScreen extends StatelessWidget {
  final List<Product> alreadyBoughtProducts;
  const AlreadyBoughtScreen({super.key, required this.alreadyBoughtProducts});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      childAspectRatio: 168 / 240,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 8,
      children: alreadyBoughtProducts
          .map(
            (product) => ProductCardWidget(product: product),
          )
          .toList(),
    );
  }
}
