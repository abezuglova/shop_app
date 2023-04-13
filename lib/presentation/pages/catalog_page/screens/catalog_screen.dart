import 'package:flutter/material.dart';
import 'package:third_task/presentation/pages/catalog_page/widgets/sections_widget.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionsWidget(),
        SizedBox(height: 16),
      ],
    );
  }
}
