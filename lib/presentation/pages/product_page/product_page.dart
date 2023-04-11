import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/pages/product_page/screens/product_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          titleText: 'Говядина',
          leading: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronLeftIcon,
          ),
          actions: [
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.downloadIcon,
            ),
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.likeIcon,
            ),
          ],
        ),
        body: ProductScreen(
          product: Product(
            amount: '1',
            brand: 'Lorem ipsum',
            characteristics: 'Lorem ipsum',
            description: 'Lorem ipsum',
            discount: '-50%',
            images: [
              'https://skolko-stoit.ru/wp-content/uploads/2021/07/1-14.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'Говядина',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
          ),
        ),
      ),
    );
  }
}
