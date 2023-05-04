import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PriceWidget extends StatelessWidget {
  final Product product;
  const PriceWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 81),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Text(
                    '${product.oldPrice} ${l10n.ruble}',
                    style: AppFonts.regular18.copyWith(
                      color: AppColors.enabledTextColor,
                    ),
                  ),
                  Positioned(
                    left: 1.71,
                    top: 13,
                    child: Transform.rotate(
                      angle: -6.71 * pi / 180,
                      child: Container(
                        width: 85.59,
                        height: 1.4,
                        color: AppColors.discountColor,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${product.newPrice} ${l10n.ruble}',
                style: AppFonts.medium28.copyWith(
                  color: AppColors.discountColor,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => context
                          .read<ShoppingCartCubit>()
                          .onProductToShoppingCartAdded(
                            product.id,
                            product,
                          ),
            // Если бы была реализована логика с адресами, кнопке был бы назначен следующий callback:
            // onPressed: () => showModalBottomSheet(
            //   context: context,
            //   isScrollControlled: true,
            //   shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(12),
            //       topRight: Radius.circular(12),
            //     ),
            //   ),
            //   builder: (context) => const ChooseAddressWidget(),
            // ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.shoppingCartIcon,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    l10n.toShoppingCart,
                    style: AppFonts.semiBold16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
