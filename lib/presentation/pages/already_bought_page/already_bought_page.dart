import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/already_bought_page/screens/already_bought_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlreadyBoughtPage extends StatelessWidget {
  const AlreadyBoughtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n =AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: l10n.alreadyBought,
        leading: SvgIconButton(
          onPressed: () => context.pop(),
          iconPath: AppIcons.chevronLeftIcon,
        ),
      ),
      body: AlreadyBoughtScreen(
        alreadyBoughtProducts: [
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
          Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк',
            discount: '-50%',
            images: [
              'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
            recommendations: [],
          ),
        ],
      ),
    );
  }
}
