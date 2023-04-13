import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

class BrandListWidget extends StatelessWidget {
  final List<Brand> brandList;
  const BrandListWidget({super.key, required this.brandList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Бренды',
            style: AppFonts.yesevaRegular24,
          ),
          const SizedBox(height: 18),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: brandList
                .map(
                  (brand) => Image.network(brand.logo),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
