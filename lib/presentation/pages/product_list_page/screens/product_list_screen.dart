import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/product_list_page/widgets/sorting_widget.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> productList;
  const ProductListScreen({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SortingWidget(
              productList: productList,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 89),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 168 / 240,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) => ProductCardWidget(
                product: productList[index],
              ),
              itemCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
