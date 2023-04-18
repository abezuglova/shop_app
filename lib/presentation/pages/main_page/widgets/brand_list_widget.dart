import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.alreadyBought,
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
