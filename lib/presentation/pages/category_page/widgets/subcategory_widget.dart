import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

class SubcategoryWidget extends StatelessWidget {
  final Category subcategory;
  const SubcategoryWidget({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        '/catalog/category/product_list',
        extra: subcategory,
      ),
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subcategory.name,
              style: AppFonts.regular14_121,
            ),
            SvgPicture.asset(AppIcons.chevronRightIcon),
          ],
        ),
      ),
    );
  }
}
