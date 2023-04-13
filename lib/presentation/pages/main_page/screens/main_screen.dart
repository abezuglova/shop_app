import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/main_page/widgets/advertisement_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/already_bought_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/best_deals_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/brand_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/category_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/footer_widget.dart';

class MainScreen extends StatelessWidget {
  final MainPageData mainPageData;
  const MainScreen({super.key, required this.mainPageData});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AdvertisementListWidget(
          advertisementList: mainPageData.advertisementList,
        ),
        CategoryListWidget(
          categories: mainPageData.popularCategories,
        ),
        BestDealsWidget(
          bestDeals: mainPageData.bestDeals,
        ),
        AlreadyBoughtListWidget(
          alreadyBoughtList: mainPageData.alreadyBoughtList,
        ),
        BrandListWidget(
          brandList: mainPageData.brandList,
        ),
        const SizedBox(height: 36),
        const FooterWidget(),
        const SizedBox(height: 61),
      ],
    );
  }
}
