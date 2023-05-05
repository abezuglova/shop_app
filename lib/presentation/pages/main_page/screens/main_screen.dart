import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/main_page/widgets/advertisement_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/already_bought_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/best_deals_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/brand_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/category_list_widget.dart';
import 'package:third_task/presentation/pages/main_page/widgets/footer_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class MainScreen extends StatelessWidget {
  final MainPageData mainPageData;
  const MainScreen({super.key, required this.mainPageData});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: ListView(
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
          SizedBox(height: 36.h),
          const FooterWidget(),
          SizedBox(height: 134.h),
        ],
      ),
    );
  }
}
