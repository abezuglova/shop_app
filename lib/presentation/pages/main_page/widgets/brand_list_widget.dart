import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BrandListWidget extends StatelessWidget {
  final List<Brand> brandList;
  const BrandListWidget({super.key, required this.brandList});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.brands,
            style: AppFonts.yesevaRegular24,
          ),
          SizedBox(height: 18.h),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              crossAxisSpacing: 16.r,
              mainAxisSpacing: 16.r,
            ),
            itemBuilder: (context, index) =>
                Image.network(brandList[index].logo),
            itemCount: brandList.length,
          ),
        ],
      ),
    );
  }
}
