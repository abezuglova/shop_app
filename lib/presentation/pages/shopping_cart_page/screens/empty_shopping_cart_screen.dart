import 'package:flutter/material.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class EmptyShoppingCartScreen extends StatelessWidget {
  const EmptyShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'В корзине пока пусто',
            style: AppFonts.medium24,
          ),
          const SizedBox(height: 9),
          Text(
            'Добавленные товары будут отображаться здесь',
            style: AppFonts.regular14,
          ),
          const SizedBox(height: 44),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text(
                'Отправиться за покупками',
                style: AppFonts.semiBold18.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
