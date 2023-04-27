import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/category_page/screens/category_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: 'Напитки, соки, чай, кофе',
        leading: SvgIconButton(
          onPressed: () {},
          iconPath: AppIcons.chevronLeftIcon,
        ),
      ),
      body: CategoryScreen(
        category: Category(
          id: '1',
          name: 'Напитки, соки, чай, кофе',
          subcategories: [],
        ),
      ),
    );
  }
}
