import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/product_page/screens/product_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Stack(
        children: [
          ProductScreen(
            product: product,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CustomAppBar(
              titleText: product.name,
              leading: SvgIconButton(
                onPressed: context.pop,
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
          ),
        ],
      ),
    );
  }
}
