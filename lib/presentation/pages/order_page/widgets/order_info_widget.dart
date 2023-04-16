import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class OrderInfoWidget extends StatelessWidget {
  final Order order;
  const OrderInfoWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DateFormat('dd MMMM y').format(order.deliveryDateTime),
          style: AppFonts.medium14_144_5.copyWith(
            color: AppColors.dateColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${order.productList.length} товаров на сумму ${order.generalPrice} р.',
          style: AppFonts.bold16_144_5,
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: order.status == 'В пути'
                ? AppColors.inWayColor.withOpacity(0.1)
                : AppColors.mainGreen.withOpacity(0.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(41),
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
                    const SizedBox(width: 8),
                    Text(
                      'В пути',
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
                    const SizedBox(width: 8),
                    Text(
                      'Доставлен',
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
