import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/custom_bottom_nav_bar.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/catalog_page/screens/catalog_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AppIcons.smallDeliveryIcon),
              const SizedBox(width: 8),
              Text(
                'ул. Пушкина 15, д. 20, кв. 113',
                style: AppFonts.medium14,
              ),
            ],
          ),
        ),
        body: CatalogScreen(
          categories: [
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
            Category(
              name: 'Молочные продукты, яйцо',
              image: 'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
              subcategories: [],
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
