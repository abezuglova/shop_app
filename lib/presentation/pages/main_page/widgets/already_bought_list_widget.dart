import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';

class AlreadyBoughtListWidget extends StatelessWidget {
  final List<Product> alreadyBoughtList;
  const AlreadyBoughtListWidget({super.key, required this.alreadyBoughtList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Лучшие предложения',
            style: AppFonts.yesevaRegular24,
          ),
        ),
        SizedBox(
          height: 294,
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 36),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => ProductCardWidget(
              product: alreadyBoughtList[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 8),
            itemCount: alreadyBoughtList.length,
          ),
        ),
      ],
    );
  }
}
