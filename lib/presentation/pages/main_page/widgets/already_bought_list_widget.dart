import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlreadyBoughtListWidget extends StatelessWidget {
  final List<Product> alreadyBoughtList;
  const AlreadyBoughtListWidget({super.key, required this.alreadyBoughtList});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            l10n.alreadyBought,
            style: AppFonts.yesevaRegular24,
          ),
        ),
        SizedBox(
          height: 294,
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 36.h),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => ProductCardWidget(
              product: alreadyBoughtList[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 8.h),
            itemCount: alreadyBoughtList.length,
          ),
        ),
      ],
    );
  }
}
