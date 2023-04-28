import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/category_widget.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/sections_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:third_task/presentation/utils/app_images.dart';

class CatalogScreen extends StatelessWidget {
  final List<Category> categories;
  const CatalogScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final categoryImages = [
      AppImages.category1,
      AppImages.category2,
      AppImages.category3,
      AppImages.category4,
    ];
    return ShadowWrapper(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SectionsWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Text(
                l10n.categories,
                style: AppFonts.yesevaRegular24,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 89),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 163 / 117,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) => CategoryWidget(
                category: categories[index],
                image: categoryImages[index],
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
