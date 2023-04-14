import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/pages/already_bought_page/already_bought_page.dart';
import 'package:third_task/presentation/pages/category_page/category_page.dart';
import 'package:third_task/presentation/pages/my_orders_page/my_orders_page.dart';
import 'package:third_task/presentation/pages/order_page/order_page.dart';
import 'package:third_task/presentation/pages/personal_data_page/personal_data_page.dart';
import 'package:third_task/presentation/pages/profile_page/profile_page.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/shopping_cart_page.dart';
import 'package:third_task/presentation/pages/subcategory_page/subcategory_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: const DividerThemeData(
          color: AppColors.dividerColor,
          thickness: 1,
          space: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainGreen,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(43),
              ),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
      home: const OrderPage(),
    );
  }
}
