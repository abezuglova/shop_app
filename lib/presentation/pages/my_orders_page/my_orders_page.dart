import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/my_orders_page/screens/my_orders_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: l10n.myOrders,
        leading: SvgIconButton(
          onPressed: () => context.pop(),
          iconPath: AppIcons.chevronLeftIcon,
        ),
      ),
      body: MyOrdersScreen(
        orderList: [
          Order(
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
          Order(
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
          Order(
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
        ],
      ),
    );
  }
}
