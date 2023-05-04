import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        width: 168,
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.elementShadowColor.withOpacity(0.1),
              offset: const Offset(0, 10),
              blurRadius: 20,
              spreadRadius: -5,
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.images[0],
              width: 168,
              height: 133,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
              child: Text(
                product.name,
                style: AppFonts.regular12_135,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                '${l10n.per} ${product.amount} ${l10n.items}',
                style: AppFonts.regular12_135.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                    width: 52,
                    height: 31,
                    child: ElevatedButton(
                      onPressed: () => context
                          .read<ShoppingCartCubit>()
                          .onProductToShoppingCartAdded(
                            product.id,
                            product,
                          ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.smallElevatedButtonColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(68),
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
