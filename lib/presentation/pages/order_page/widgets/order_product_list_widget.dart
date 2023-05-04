import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/order_page/widgets/order_product_widget.dart';

class OrderProductListWidget extends StatelessWidget {
  final List<ShoppingCartItem> productList;
  const OrderProductListWidget({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: productList
          .map(
            (product) => OrderProductWidget(
              shoppingCartItem: product,
            ),
          )
          .toList(),
    );
  }
}
