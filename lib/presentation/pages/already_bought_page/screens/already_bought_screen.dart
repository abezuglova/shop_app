import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class AlreadyBoughtScreen extends StatelessWidget {
  final List<Product> alreadyBoughtProducts;
  const AlreadyBoughtScreen({super.key, required this.alreadyBoughtProducts});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: GridView.count(
        padding: const EdgeInsets.fromLTRB(16, 25, 16, 89),
        childAspectRatio: 168 / 240,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        children: alreadyBoughtProducts
            .map(
              (product) => ProductCardWidget(product: product),
            )
            .toList(),
      ),
    );
  }
}
