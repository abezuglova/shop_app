import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/pages/product_page/screens/product_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          titleText: 'Говядина',
          leading: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronLeftIcon,
          ),
          actions: [
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.downloadIcon,
            ),
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.likeIcon,
            ),
          ],
        ),
        body: ProductScreen(
          product: Product(
            amount: '1',
            brand: 'Углече поле',
            characteristics: 'Lorem ipsum sit amet dolor',
            description: 'Альтернативный Флэнк стейк вырезается из нежирной брюшной части ближе к ребрам и имеет уникальный насыщенный вкус и яркий мясной аромат! Многогранен вариантами приготовления – отлично проявляется себя приготовленным целиком, или порезанным на слайсы. Здесь кулинарному экспериментатору есть где разгуляться! Просто пожарить, потушить или выдержать в маринаде – этот стейк подойдет для любых Ваших идей, благодаря своей текстуре с хорошо видимыми волокнами. Для мясного поголовья «Углече Поле» выбрана Абердин-Ангусская порода коров – признанная лучшей по качеству и вкусу мяса и стейков. При пастбищном содержании (то есть наши животные свободно пасутся на поле) мясо получается более диетическим и таким, каким оно и должно быть - в нем меньше жира, оно сочное, мягкое и обладает насыщенным вкусом.',
            discount: '-50%',
            images: [
              'https://skolko-stoit.ru/wp-content/uploads/2021/07/1-14.jpg',
              'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
            ],
            name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
            price: '600 р/кг',
            reviews: 'Lorem ipsum',
          ),
        ),
      ),
    );
  }
}
