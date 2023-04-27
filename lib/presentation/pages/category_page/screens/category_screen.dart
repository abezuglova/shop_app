import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/category_page/widgets/subcategory_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class CategoryScreen extends StatelessWidget {
  final Category category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (BuildContext context, int index) => SubcategoryWidget(
          subcategory: category.subcategories[index],
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: category.subcategories.length,
      ),
    );
  }
}
