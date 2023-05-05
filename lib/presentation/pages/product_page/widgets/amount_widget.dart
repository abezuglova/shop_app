import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AmountWidget extends StatefulWidget {
  final Product product;
  const AmountWidget({super.key, required this.product});

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      height: 43.h,
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: AppColors.offBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${widget.product.amount} ${l10n.items}',
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.elementShadowColor.withOpacity(0.15),
                      offset: Offset(0, 5.h),
                      blurRadius: 10.r,
                      spreadRadius: -5.r,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${widget.product.amount} ${l10n.items}',
                        style: AppFonts.medium13_144_5,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '-${widget.product.discount}',
                        style: AppFonts.medium13_144_5.copyWith(
                          color: AppColors.discountColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
