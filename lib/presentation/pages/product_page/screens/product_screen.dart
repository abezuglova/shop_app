import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/product_page/widgets/amount_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/brand_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/main_info_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/overview_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/photo_slider_widget.dart';
import 'package:third_task/presentation/pages/product_page/widgets/recommendations_widget.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PhotoSliderWidget(
          images: product.images,
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              MainInfoWidget(
                product: product,
              ),
              const SizedBox(height: 24),
              const AmountWidget(),
            ],
          ),
        ),
        const SizedBox(height: 24),
        OverviewWidget(product: product),
        const SizedBox(height: 24),
        BrandWidget(brand: product.brand),
        const SizedBox(height: 24),
        RecommendationsWidget(recommendations: product.recommendations),
        const SizedBox(height: 74),
      ],
    );
  }
}
