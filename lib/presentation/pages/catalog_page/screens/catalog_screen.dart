import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/category_widget.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/sections_widget.dart';

class CatalogScreen extends StatelessWidget {
  final List<Category> categories;
  const CatalogScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SectionsWidget(),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'Категории',
            style: AppFonts.yesevaRegular24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            childAspectRatio: 163 / 117,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: categories
                .map(
                  (category) => CategoryWidget(category: category),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
