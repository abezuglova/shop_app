import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  final String image;
  const CategoryWidget({
    super.key,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        '/catalog/category',
        extra: category,
      ),
      child: SizedBox(
        width: 163.w,
        height: 117.h,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: 163.w,
              height: 117.h,
              clipBehavior: Clip.hardEdge,
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
              bottom: 16.h,
              child: SizedBox(
                width: 84.w,
                child: Text(
                  category.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.regular14_121,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
