import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class AlreadyBoughtScreen extends StatelessWidget {
  final List<Product> alreadyBoughtProducts;
  const AlreadyBoughtScreen({super.key, required this.alreadyBoughtProducts});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: GridView.builder(
        padding: EdgeInsets.fromLTRB(16.w, 25.h, 16.w, 89.h),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 168 / 240,
          crossAxisSpacing: 8.r,
          mainAxisSpacing: 16.r,
        ),
        itemBuilder: (context, index) => ProductCardWidget(
          product: alreadyBoughtProducts[index],
        ),
        itemCount: alreadyBoughtProducts.length,
      ),
    );
  }
}
