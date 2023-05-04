import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/order_page/screens/order_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: 'Заказ № 39578235',
        leading: SvgIconButton(
          onPressed: () {},
          iconPath: AppIcons.chevronLeftIcon,
        ),
      ),
      body: OrderScreen(
        order: Order(
          number: 8726027349,
          status: 'В пути',
          deliveryPrice: 99,
          deliveryAddress: Address(
            name: 'Квартира',
            city: 'Евпатория',
            street: 'Ленина',
            house: '1',
          ),
          orderingDateTime: DateTime.now(),
          deliveryDateTime: DateTime.now(),
          paymentMethod: PaymentMethod(
            cardList: [],
          ),
          shoppingCart: ShoppingCart(
            id: 1,
            products: [],
            generalPrice: 1600,
            discount: 25,
            generalDiscount: 150,
            recommendations: [],
          ),
        ),
      ),
    );
  }
}
