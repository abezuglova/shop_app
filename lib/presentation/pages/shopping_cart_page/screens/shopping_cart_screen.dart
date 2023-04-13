import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/product_list_widget.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/summary_widget.dart';
import 'package:third_task/presentation/ui_kit/recommendations_widget.dart';

class ShoppingCartScreen extends StatelessWidget {
  final ShoppingCart shoppingCart;
  const ShoppingCartScreen({super.key, required this.shoppingCart});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            ProductListWidget(
              productList: shoppingCart.products,
            ),
            RecommendationsWidget(
              recommendations: shoppingCart.recommendations,
            ),
            const SizedBox(height: 6),
            const Divider(
              color: AppColors.offBackgroundColor2,
            ),
            SummaryWidget(
              products: shoppingCart.products,
            ),
            const SizedBox(height: 98),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: const Offset(0, -7),
                  blurRadius: 15,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                child: Text(
                  'Перейти к оформлению',
                  style: AppFonts.semiBold18.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
