import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 0,
                ),
                child: Text(
                  'Описание',
                  style: _selectedTab == 0
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 1,
                ),
                child: Text(
                  'Характеристики',
                  style: _selectedTab == 1
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => setState(
                  () => _selectedTab = 2,
                ),
                child: Text(
                  'Отзывы',
                  style: _selectedTab == 2
                      ? AppFonts.semiBold16_132_5
                      : AppFonts.semiBold16_132_5.copyWith(color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          IndexedStack(
            index: _selectedTab,
            children: [
              Text(
                widget.product.description,
                style: AppFonts.regular16_160_5,
              ),
              Text(
                widget.product.characteristics,
                style: AppFonts.regular16_160_5,
              ),
              Text(
                widget.product.reviews,
                style: AppFonts.regular16_160_5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
