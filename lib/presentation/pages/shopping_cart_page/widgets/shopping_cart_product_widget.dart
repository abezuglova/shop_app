import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCartProductWidget extends StatelessWidget {
  final ShoppingCartItem shoppingCartItem;
  const ShoppingCartProductWidget({super.key, required this.shoppingCartItem});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => context.push(
        '/shopping_cart/product',
        extra: shoppingCartItem.product,
      ),
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70.r,
              height: 70.r,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.r),
                ),
              ),
              child: Image.network(
                shoppingCartItem.product.images[0],
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoppingCartItem.product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.regular14_132_5,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${shoppingCartItem.product.newPrice} ${l10n.ruble}',
                            style: AppFonts.semiBold16.copyWith(
                              color: AppColors.discountColor,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Stack(
                            children: [
                              Text(
                                '${shoppingCartItem.product.oldPrice} ${l10n.ruble}',
                                style: AppFonts.regular14.copyWith(
                                  color: AppColors.enabledTextColor,
                                ),
                              ),
                              Positioned(
                                top: 11.5,
                                child: Transform.rotate(
                                  angle: -7.25 * pi / 180,
                                  child: Container(
                                    width: 55.44.w,
                                    height: 1.4.h,
                                    color: AppColors.discountColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 104.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: AppColors.offBackgroundColor2,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.r),
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgIconButton(
                              onPressed: shoppingCartItem.quantity == 0
                                  ? null
                                  : () => context
                                      .read<ShoppingCartCubit>()
                                      .onProductQuantityChanged(
                                        shoppingCartItem.copyWith(
                                          quantity:
                                              shoppingCartItem.quantity - 1,
                                        ),
                                      ),
                              iconPath: AppIcons.minusIcon,
                            ),
                            Text(
                              '${shoppingCartItem.quantity} ${l10n.items}',
                              style: AppFonts.regular12,
                            ),
                            SvgIconButton(
                              onPressed: () => context
                                  .read<ShoppingCartCubit>()
                                  .onProductQuantityChanged(
                                    shoppingCartItem.copyWith(
                                      quantity: shoppingCartItem.quantity + 1,
                                    ),
                                  ),
                              iconPath: AppIcons.plusIcon,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
