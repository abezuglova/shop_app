import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BestDealsWidget extends StatelessWidget {
  final List<Product> bestDeals;
  const BestDealsWidget({super.key, required this.bestDeals});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            l10n.bestDeals,
            style: AppFonts.yesevaRegular24,
          ),
        ),
        SizedBox(
          height: 294,
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 36),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => ProductCardWidget(
              product: bestDeals[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 8),
            itemCount: bestDeals.length,
          ),
        ),
      ],
    );
  }
}
