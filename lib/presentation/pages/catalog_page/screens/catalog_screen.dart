import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/sections_widget.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

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
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [],
          ),
        ),
      ],
    );
  }
}
