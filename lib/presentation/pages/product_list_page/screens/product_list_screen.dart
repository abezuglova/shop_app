import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/product_list_page/widgets/product_type_widget.dart';
import 'package:third_task/presentation/pages/product_list_page/widgets/sorting_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class ProductListScreen extends StatelessWidget {
  final Category subcategory;
  const ProductListScreen({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: Column(
        children: [
          ListView(
            children: [
              const SortingWidget(),
              const SizedBox(height: 20),
              // Column(
              //   children: subcategory.subcategories
              //       .map(
              //         (type) => ProductTypeWidget(
              //           productType: type,
              //         ),
              //       )
              //       .toList(),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
