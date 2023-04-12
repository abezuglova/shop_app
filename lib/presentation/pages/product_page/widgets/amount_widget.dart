import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_colors.dart';

class AmountWidget extends StatelessWidget {
  const AmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: AppColors.offBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '0,4 кг',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '0,4 кг',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
