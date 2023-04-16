import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/discounts_page/screens/discounts_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class DiscountsPage extends StatelessWidget {
  const DiscountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: 'Скидки',
          leading: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronLeftIcon,
          ),
        ),
        body: DiscountsScreen(
          discountProducts: [
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
      ),
    );
  }
}
