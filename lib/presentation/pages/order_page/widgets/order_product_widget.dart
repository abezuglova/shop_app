import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderProductWidget extends StatelessWidget {
  final ShoppingCartItem shoppingCartItem;
  const OrderProductWidget({super.key, required this.shoppingCartItem});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.5.h),
          child: Row(
            children: [
              Container(
                width: 70.w,
                height: 70.h,
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
                      children: [
                        Text(
                          '${shoppingCartItem.product.newPrice} ${l10n.ruble}',
                          style: AppFonts.semiBold16_144_5,
                        ),
                        Text(
                          '${shoppingCartItem.product.amount} ${l10n.items}',
                          style: AppFonts.regular16_144_5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.offBackgroundColor2,
        ),
      ],
    );
  }
}
