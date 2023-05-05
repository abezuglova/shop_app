import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/utils/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainInfoWidget extends StatelessWidget {
  final Product product;
  const MainInfoWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 5.5.h,
              ),
              decoration: const BoxDecoration(
                color: AppColors.discountColor,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 6.w,
                    height: 2.h,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '${product.discount} ${l10n.percent}',
                    style: AppFonts.bold13.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              padding: EdgeInsets.fromLTRB(4.w, 5.h, 8.w, 5.h),
              decoration: BoxDecoration(
                color: AppColors.brandColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(4.r),
                ),
              ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                      AppImages.organicSign,
                    ),
                  ),
                  Text(
                    l10n.organic,
                    style: AppFonts.semiBold13.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              padding: EdgeInsets.fromLTRB(4.w, 3.43.h, 8.w, 3.43.h),
              decoration: BoxDecoration(
                color: AppColors.deliveryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(4.r),
                ),
              ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                      AppImages.deliverySign,
                    ),
                  ),
                  Text(
                    l10n.expressDelivery,
                    style: AppFonts.medium13_144_5,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Text(
          product.name,
          style: AppFonts.regular20_132_5,
        ),
        SizedBox(height: 32.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.deliveryIcon),
            SizedBox(width: 8.w),
            Text(
              '${l10n.nearliestDeliveryDate}: ${l10n.tomorrowMorning}',
              style: AppFonts.medium16_144_5.copyWith(
                color: AppColors.mainGreen,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
