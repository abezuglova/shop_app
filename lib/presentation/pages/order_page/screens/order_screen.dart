import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/order_page/widgets/order_info_widget.dart';
import 'package:third_task/presentation/pages/order_page/widgets/order_product_list_widget.dart';

class OrderScreen extends StatelessWidget {
  final Order order;
  const OrderScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      children: [
        OrderInfoWidget(
          order: order,
        ),
        const SizedBox(height: 24),
        OrderProductListWidget(
          productList: order.productList,
        ),
        const SizedBox(height: 12.5),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(23),
              decoration: const BoxDecoration(
                color: AppColors.orderDeliveryPriceColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: SvgPicture.asset(
                AppIcons.deliveryIcon,
                colorFilter: const ColorFilter.mode(
                  AppColors.enabledTextColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Доставка',
                  style: AppFonts.regular14_132_5,
                ),
                const SizedBox(height: 8),
                Text(
                  '${order.deliveryPrice} р.',
                  style: AppFonts.semiBold16_144_5,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
