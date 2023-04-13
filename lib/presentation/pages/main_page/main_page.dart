import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/pages/main_page/screens/main_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AppIcons.smallDeliveryIcon),
              const SizedBox(width: 8),
              Text(
                'ул. Пушкина 15, д. 20, кв. 113',
                style: AppFonts.medium14,
              ),
            ],
          ),
        ),
        body: MainScreen(
          mainPageData: MainPageData(
            address: Address(
              name: 'Квартира',
              city: 'Москва',
              street: 'Пушкина',
              house: '20',
            ),
            advertisementList: [
              Advertisement(
                name: 'Настоящая икра без консервантов',
                description:
                    'Попробуйте икру без химических добавок и консервантов',
                image:
                    'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
              ),
              Advertisement(
                name: 'Новинка от УГЛЕЧЕ ПОЛЕ',
                description:
                    'Продукт кисломолочный Угурт питьевой с Вишней 250г',
                image:
                    'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
              ),
              Advertisement(
                name: 'Настоящая икра без консервантов',
                description:
                    'Попробуйте икру без химических добавок и консервантов',
                image:
                    'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
              ),
            ],
            popularCategories: [
              Category(
                name: 'Молочные продукты, яйцо',
                image:
                    'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
                subcategories: [],
              ),
              Category(
                name: 'Молочные продукты, яйцо',
                image:
                    'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
                subcategories: [],
              ),
              Category(
                name: 'Молочные продукты, яйцо',
                image:
                    'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
                subcategories: [],
              ),
              Category(
                name: 'Молочные продукты, яйцо',
                image:
                    'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
                subcategories: [],
              ),
              Category(
                name: 'Молочные продукты, яйцо',
                image:
                    'https://purmix.ru/images/uroki/karand/raznoe/cheese3.jpg',
                subcategories: [],
              ),
            ],
            bestDeals: [
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
            alreadyBoughtList: [
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
            brandList: [
              Brand(
                name: 'Углече поле',
                logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
              ),
              Brand(
                name: 'Углече поле',
                logo: 'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
              ),
              Brand(
                name: 'Углече поле',
                logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
              ),
              Brand(
                name: 'Углече поле',
                logo: 'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
              ),
              Brand(
                name: 'Углече поле',
                logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
              ),
              Brand(
                name: 'Углече поле',
                logo: 'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
