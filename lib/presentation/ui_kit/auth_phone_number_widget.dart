import 'package:flutter/material.dart';
import 'package:third_task/presentation/ui_kit/auth_code_widget.dart';
import 'package:third_task/presentation/ui_kit/bottom_sheet_line.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class AuthPhoneNumberWidget extends StatelessWidget {
  const AuthPhoneNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetLine(),
            const SizedBox(height: 24),
            Text(
              'Номер телефона',
              style: AppFonts.bold20_144_5,
            ),
            const SizedBox(height: 8),
            Text(
              'Для продолжения оформления заказа укажите номер телефона',
              style: AppFonts.regular16_144_5.copyWith(
                color: AppColors.secondaryTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            TextField(
              style: AppFonts.medium16_144_5,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 19),
                fillColor: AppColors.offBackgroundColor2,
                filled: true,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                builder: (context) => const AuthCodeWidget(),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 113.5,
                  vertical: 16,
                ),
                child: Text(
                  'Получить код',
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {},
              child: Text(
                'Нажимая “Получить код”, я соглашаюсь с Условиями продажи, Политикой конфиденциальности и Политикой в отношении обработки персональных данных.',
                style: AppFonts.regular12_144_5.copyWith(
                  color: AppColors.mainGreen,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 92.5,
                  vertical: 16,
                ),
                child: Text(
                  'Войти через Apple',
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
