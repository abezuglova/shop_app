import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  const CategoryCardWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      height: 104,
      child: Stack(
        children: [
          Container(
            width: 104,
            height: 104,
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
            left: 10,
            top: 10,
            child: Image.network(
              category.image,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            left: 12,
            bottom: 8,
            child: SizedBox(
              width: 84,
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
    );
  }
}
