import 'package:flutter/material.dart';
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
      child: SizedBox(
        width: 163,
        height: 117,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: 163,
              height: 117,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.elementShadowColor.withOpacity(0.1),
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: -5,
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
              left: 12,
              bottom: 16,
              child: SizedBox(
                width: 84,
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
