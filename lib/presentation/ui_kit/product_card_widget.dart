import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  const ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => context.push(
        '/catalog/category/product_list/product',
        extra: product,
      ),
      child: Container(
        width: 168.w,
        height: 240.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.elementShadowColor.withOpacity(0.1),
              offset: Offset(0, 10.h),
              blurRadius: 20.r,
              spreadRadius: -5.r,
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.images[0],
              width: 168.w,
              height: 133.h,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 4.h),
              child: Text(
                product.name,
                style: AppFonts.regular12_135,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                '${l10n.per} ${product.amount} ${l10n.items}',
                style: AppFonts.regular12_135.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.newPrice} ${l10n.ruble}',
                    style: AppFonts.semiBold18_130,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 52.w,
                    height: 31.h,
                    child: ElevatedButton(
                      onPressed: () => context
                          .read<ShoppingCartCubit>()
                          .onProductToShoppingCartAdded(
                            product.id,
                            product,
                          ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.smallElevatedButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(68.r),
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: SvgPicture.asset(AppIcons.smallShoppingCartIcon),
                    ),
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
