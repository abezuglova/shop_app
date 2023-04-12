import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/ui_kit/product_card_widget.dart';

class RecommendationsWidget extends StatelessWidget {
  final List<Product> recommendations;
  const RecommendationsWidget({super.key, required this.recommendations});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Рекомендуем',
          ),
        ),
        SizedBox(
          height: 276,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => ProductCardWidget(
              product: recommendations[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 8),
            itemCount: recommendations.length,
          ),
        )
      ],
    );
  }
}
