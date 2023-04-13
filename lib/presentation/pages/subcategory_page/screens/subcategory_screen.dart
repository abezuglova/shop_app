import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/subcategory_page/widgets/filters_widget.dart';
import 'package:third_task/presentation/pages/subcategory_page/widgets/product_type_widget.dart';
import 'package:third_task/presentation/pages/subcategory_page/widgets/sorting_widget.dart';

class SubcategoryScreen extends StatelessWidget {
  final Subcategory subcategory;
  const SubcategoryScreen({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FiltersWidget(
          productTypes: subcategory.productTypes,
        ),
        ListView(
          children: [
            const SortingWidget(),
            const SizedBox(height: 20),
            Column(
              children: subcategory.productTypes
                  .map(
                    (type) => ProductTypeWidget(
                      productType: type,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}
