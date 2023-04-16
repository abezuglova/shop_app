import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 167,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'О компании',
                    style: AppFonts.semiBold18.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 173,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Об органике',
                    style: AppFonts.semiBold18.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Доставка',
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Оплата',
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Поддержка',
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Сертификаты',
                    style: AppFonts.medium13_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
