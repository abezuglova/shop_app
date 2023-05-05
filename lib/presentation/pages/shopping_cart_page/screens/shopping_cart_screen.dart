import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/shopping_cart_product_list_widget.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/widgets/summary_widget.dart';
import 'package:third_task/presentation/ui_kit/recommendations_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCartScreen extends StatelessWidget {
  final ShoppingCart shoppingCart;
  const ShoppingCartScreen({super.key, required this.shoppingCart});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        ListView(
          children: [
            ShoppingCartProductListWidget(
              productList: shoppingCart.products,
            ),
            RecommendationsWidget(
              recommendations: shoppingCart.recommendations,
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const Divider(
                color: AppColors.offBackgroundColor2,
              ),
            ),
            SummaryWidget(
              shoppingCart: shoppingCart,
            ),
            SizedBox(height: 164.h),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 89.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: Offset(0, -7.h),
                  blurRadius: 15.r,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () => context.push(
                '/shopping_cart/checkout',
                extra: shoppingCart,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 70.w,
                  vertical: 16.h,
                ),
                child: Text(
                  l10n.goToCheckout,
                  style: AppFonts.semiBold18_144_5.copyWith(
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
