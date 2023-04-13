import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/empty_shopping_cart_screen.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/shopping_cart_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          title: Text(
            'Корзина',
            style: AppFonts.medium16,
          ),
          actions: [
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.basketIcon,
            ),
          ],
        ),
        body: EmptyShoppingCartScreen(),
      ),
    );
  }
}
