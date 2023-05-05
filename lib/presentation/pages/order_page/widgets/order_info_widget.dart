import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderInfoWidget extends StatelessWidget {
  final Order order;
  const OrderInfoWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        Text(
          DateFormat('dd MMMM y').format(order.deliveryDateTime),
          style: AppFonts.medium14_144_5.copyWith(
            color: AppColors.dateColor,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          '${l10n.nProducts(order.shoppingCart.products.length)} ${l10n.onSum} ${order.shoppingCart.generalPrice} р.',
          style: AppFonts.bold16_144_5,
        ),
        SizedBox(height: 24.h),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            color: order.status == 'В пути'
                ? AppColors.inWayColor.withOpacity(0.1)
                : AppColors.mainGreen.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(41.r),
            ),
          ),
          child: order.status == 'В пути'
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.deliveryIcon,
                      colorFilter: const ColorFilter.mode(
                        AppColors.inWayColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      l10n.inWay,
                      style: AppFonts.medium14_144_5.copyWith(
                        color: AppColors.inWayColor,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.dawIcon,
                    ),
                    SizedBox(width: 8.r),
                    Text(
                      l10n.sent,
                      style: AppFonts.medium14_144_5.copyWith(
                        color: AppColors.mainGreen,
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
