import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/discounts_page/cubit/discounts_cubit.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class DiscountsScreen extends StatelessWidget {
  final List<Product> discountProducts;
  const DiscountsScreen({super.key, required this.discountProducts});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: RefreshIndicator(
        onRefresh: () async {
          await context.read<DiscountsCubit>().onPageOpened();
        },
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(16.w, 25.h, 16.w, 89.h),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 168 / 240,
            crossAxisSpacing: 8.r,
            mainAxisSpacing: 16.r,
          ),
          itemBuilder: (context, index) => ProductCardWidget(
            product: discountProducts[index],
          ),
          itemCount: discountProducts.length,
        ),
      ),
    );
  }
}
