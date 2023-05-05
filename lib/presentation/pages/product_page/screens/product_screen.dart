import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/catalog_page/cubit/catalog_cubit.dart';
import 'package:third_task/presentation/pages/product_page/widgets/amount_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/brand_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/main_info_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/overview_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/photo_slider_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/price_widget.dart';
import 'package:third_task/presentation/ui_kit/recommendations_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            await context.read<CatalogCubit>().onPageOpened();
          },
          child: ListView(
            children: [
              SizedBox(height: 64.h),
              PhotoSliderWidget(
                images: product.images,
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    MainInfoWidget(
                      product: product,
                    ),
                    SizedBox(height: 24.h),
                    AmountWidget(product: product),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              OverviewWidget(product: product),
              SizedBox(height: 24.h),
              BrandWidget(brand: product.brand),
              SizedBox(height: 24.h),
              RecommendationsWidget(recommendations: product.recommendations),
              SizedBox(height: 163.h),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: PriceWidget(
            product: product,
          ),
        ),
      ],
    );
  }
}
