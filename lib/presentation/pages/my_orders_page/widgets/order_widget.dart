import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  const OrderWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(11.r),
                decoration: BoxDecoration(
                  color: order.status == 'В пути'
                      ? AppColors.inWayColor.withOpacity(0.1)
                      : AppColors.mainGreen.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(41),
                  ),
                ),
                child: order.status == 'В пути'
                    ? SvgPicture.asset(
                        AppIcons.deliveryIcon,
                        colorFilter: const ColorFilter.mode(
                          AppColors.inWayColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(AppIcons.dawIcon),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd MMMM y').format(order.deliveryDateTime),
                    style: AppFonts.medium14_144_5.copyWith(
                      color: AppColors.dateColor,
                    ),
                  ),
                  Text(
                    '${l10n.nProducts(order.shoppingCart.products.length)} ${l10n.onSum} ${order.shoppingCart.generalPrice} р.',
                    style: AppFonts.semiBold14_144_5,
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(AppIcons.chevronRightIcon),
        ],
      ),
    );
  }
}
