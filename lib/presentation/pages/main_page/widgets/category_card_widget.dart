import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  final String image;
  const CategoryCardWidget({
    super.key,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        '/main/category',
        extra: category,
      ),
      child: SizedBox(
        width: 104.r,
        height: 104.r,
        child: Stack(
          children: [
            Container(
              width: 104.r,
              height: 104.r,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.elementShadowColor.withOpacity(0.1),
                    offset: Offset(0, 10.h),
                    blurRadius: 20.r,
                    spreadRadius: -5.r,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Image(
                image: AssetImage(image),
              ),
            ),
            Positioned(
              left: 12.w,
              bottom: 8.h,
              child: SizedBox(
                width: 84.w,
                child: Text(
                  category.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.regular12_108_5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
