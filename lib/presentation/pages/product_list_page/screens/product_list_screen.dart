import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/entities/products_sort_type.dart';
import 'package:third_task/presentation/pages/product_list_page/widgets/sorting_widget.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> productList;
  final ProductsSortType sortType;
  const ProductListScreen({
    super.key,
    required this.productList,
    required this.sortType,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SortingWidget(
              productList: productList,
              sortType: sortType,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 89.h),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 168 / 240,
                crossAxisSpacing: 8.r,
                mainAxisSpacing: 16.r,
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
