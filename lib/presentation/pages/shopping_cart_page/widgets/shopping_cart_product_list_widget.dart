import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/shopping_cart_product_widget.dart';

class ShoppingCartProductListWidget extends StatelessWidget {
  final List<ShoppingCartItem> productList;
  const ShoppingCartProductListWidget({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => ShoppingCartProductWidget(
              shoppingCartItem: productList[index],
            ),
        separatorBuilder: (BuildContext context, int index) => const Divider(
              color: AppColors.offBackgroundColor2,
            ),
        itemCount: productList.length);
  }
}
