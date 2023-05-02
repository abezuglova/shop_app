import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/empty_shopping_cart_screen.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/shopping_cart_order_screen.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/shopping_cart_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: l10n.shoppingCart,
        actions: [
          SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.basketIcon,
          ),
        ],
      ),
      // body: ShoppingCartOrderScreen(
      //   order: Order(
      //     number: 8934759379,
      //     status: 'В пути',
      //     productsNumber: 3,
      //     generalDiscount: 150,
      //     deliveryPrice: 99,
      //     generalPrice: 1799,
      //     productList: [
      //       Product(
      //         amount: '1',
      //         brand: 'Углече поле',
      //         characteristics: 'Lorem ipsum sit amet dolor',
      //         description: 'Альтернативный Флэнк стейк',
      //         discount: '-50%',
      //         images: [
      //           'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
      //           'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      //         ],
      //         name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      //         price: '600 р/кг',
      //         reviews: 'Lorem ipsum',
      //         recommendations: [],
      //       ),
      //       Product(
      //         amount: '1',
      //         brand: 'Углече поле',
      //         characteristics: 'Lorem ipsum sit amet dolor',
      //         description: 'Альтернативный Флэнк стейк',
      //         discount: '-50%',
      //         images: [
      //           'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
      //           'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      //         ],
      //         name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      //         price: '600 р/кг',
      //         reviews: 'Lorem ipsum',
      //         recommendations: [],
      //       ),
      //     ],
      //     deliveryAddress: Address(
      //       name: 'Дом',
      //       city: 'Москва',
      //       street: 'Пушкина',
      //       house: '13',
      //     ),
      //     orderingDateTime: DateTime.now(),
      //     deliveryDateTime: DateTime.now(),
      //     paymentMethod: PaymentMethod(
      //       cardList: [],
      //     ),
      //   ),
      // ),
      body: ShoppingCartScreen(
        shoppingCart: ShoppingCart(
          id: 5,
          generalPrice: 1800,
          discount: '10%',
          generalDiscount: 150,
          products: [
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
          ],
          recommendations: [
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
            Product(
              id: 1,
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
              price: 600,
              reviews: 'Lorem ipsum',
              recommendations: [],
            ),
          ],
        ),
      ),
    );
  }
}
