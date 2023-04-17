import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/my_orders_page/screens/my_orders_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          title: Text(
            'Мои заказы',
            style: AppFonts.medium16_144_5,
          ),
          leading: SvgIconButton(
            onPressed: () {},
            iconPath: AppIcons.chevronLeftIcon,
          ),
        ),
        body: MyOrdersScreen(
          orderList: [
            Order(
              number: 8934759379,
              status: 'В пути',
              productsNumber: 3,
              generalDiscount: 150,
              deliveryPrice: 99,
              generalPrice: 1799,
              productList: [],
              deliveryAddress: Address(
                name: 'Дом',
                city: 'Москва',
                street: 'Пушкина',
                house: '13',
              ),
              orderingDateTime: DateTime.now(),
              deliveryDateTime: DateTime.now(),
              paymentMethod: PaymentMethod(
                cardList: [],
              ),
            ),
            Order(
              number: 8934759379,
              status: 'Доставлен',
              productsNumber: 3,
              generalDiscount: 150,
              deliveryPrice: 99,
              generalPrice: 1799,
              productList: [],
              deliveryAddress: Address(
                name: 'Дом',
                city: 'Москва',
                street: 'Пушкина',
                house: '13',
              ),
              orderingDateTime: DateTime.now(),
              deliveryDateTime: DateTime.now(),
              paymentMethod: PaymentMethod(
                cardList: [],
              ),
            ),
            Order(
              number: 8934759379,
              status: 'В пути',
              productsNumber: 3,
              generalDiscount: 150,
              deliveryPrice: 99,
              generalPrice: 1799,
              productList: [],
              deliveryAddress: Address(
                name: 'Дом',
                city: 'Москва',
                street: 'Пушкина',
                house: '13',
              ),
              orderingDateTime: DateTime.now(),
              deliveryDateTime: DateTime.now(),
              paymentMethod: PaymentMethod(
                cardList: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
