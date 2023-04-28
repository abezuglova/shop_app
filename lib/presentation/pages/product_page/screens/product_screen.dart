import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
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
        ListView(
          children: [
            const SizedBox(height: 72),
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
                  AmountWidget(product: product),
                ],
              ),
            ),
            const SizedBox(height: 24),
            OverviewWidget(product: product),
            const SizedBox(height: 24),
            BrandWidget(brand: product.brand),
            const SizedBox(height: 24),
            RecommendationsWidget(recommendations: product.recommendations),
            const SizedBox(height: 163),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: PriceWidget(price: '${product.price} ${l10n.ruble}'),
        ),
      ],
    );
  }
}
