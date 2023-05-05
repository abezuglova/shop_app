import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/pages/main_page/widgets/category_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:third_task/presentation/utils/app_images.dart';

class CategoryListWidget extends StatelessWidget {
  final List<Category> categories;
  const CategoryListWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final categoryImages = [
      AppImages.category1,
      AppImages.category2,
      AppImages.category3,
      AppImages.category4,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            l10n.popularCategories,
            style: AppFonts.yesevaRegular24,
          ),
        ),
        SizedBox(
          height: 158.h,
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 36.h),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                CategoryCardWidget(
              category: categories[index],
              image: categoryImages[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 8.w),
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}
