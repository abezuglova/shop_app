import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/product_widget.dart';

class ProductListWidget extends StatelessWidget {
  final List<Product> productList;
  const ProductListWidget({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => ProductWidget(
              product: productList[index],
            ),
        separatorBuilder: (BuildContext context, int index) => const Divider(
              color: AppColors.offBackgroundColor2,
            ),
        itemCount: productList.length);
  }
}
