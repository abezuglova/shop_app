import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/pages/main_page/widgets/category_card_widget.dart';

class CategoryListWidget extends StatelessWidget {
  final List<Category> categories;
  const CategoryListWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Популярные категории',
            style: AppFonts.yesevaRegular24,
          ),
        ),
        SizedBox(
          height: 158,
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 36),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => CategoryCardWidget(
              category: categories[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 8),
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}
