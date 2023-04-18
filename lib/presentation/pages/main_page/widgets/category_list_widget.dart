import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/pages/main_page/widgets/category_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryListWidget extends StatelessWidget {
  final List<Category> categories;
  const CategoryListWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            l10n.popularCategories,
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
