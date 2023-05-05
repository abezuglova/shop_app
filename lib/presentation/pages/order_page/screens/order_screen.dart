import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/order_page/widgets/order_info_widget.dart';
import 'package:third_task/presentation/pages/order_page/widgets/order_product_list_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderScreen extends StatelessWidget {
  final Order order;
  const OrderScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ShadowWrapper(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 32.h,
        ),
        children: [
          OrderInfoWidget(
            order: order,
          ),
          SizedBox(height: 24.h),
          OrderProductListWidget(
            productList: order.shoppingCart.products,
          ),
          SizedBox(height: 12.5.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(23.r),
                decoration: BoxDecoration(
                  color: AppColors.orderDeliveryPriceColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
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
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.delivery,
                    style: AppFonts.regular14_132_5,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '${order.deliveryPrice} р.',
                    style: AppFonts.semiBold16_144_5,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
