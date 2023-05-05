import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';

class ProductTypeWidget extends StatelessWidget {
  final ProductType productType;
  const ProductTypeWidget({super.key, required this.productType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            productType.name,
            style: AppFonts.yesevaRegular18,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
          child: GridView.count(
            childAspectRatio: 168 / 240,
            crossAxisCount: 2,
            crossAxisSpacing: 8.r,
            mainAxisSpacing: 16.r,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: productType.products
                .map(
                  (product) => ProductCardWidget(product: product),
                )
                .toList(),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
