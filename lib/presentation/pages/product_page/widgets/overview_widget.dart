import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';

class OverviewWidget extends StatefulWidget {
  final Product product;
  const OverviewWidget({super.key, required this.product});

  @override
  State<OverviewWidget> createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends State<OverviewWidget> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => setState(
                () => _selectedTab = 0,
              ),
              child: Text(
                'Описание',
                style: TextStyle(
                    fontWeight: _selectedTab == 0
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => setState(
                () => _selectedTab = 1,
              ),
              child: Text(
                'Характеристики',
                style: TextStyle(
                    fontWeight: _selectedTab == 1
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => setState(
                () => _selectedTab = 2,
              ),
              child: Text(
                'Отзывы',
                style: TextStyle(
                    fontWeight: _selectedTab == 2
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        IndexedStack(
          index: _selectedTab,
          children: [
            Text(widget.product.description),
            Text(widget.product.characteristics),
            Text(widget.product.reviews),
          ],
        ),
      ],
    );
  }
}
