import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/my_orders_page/widgets/order_widget.dart';

class MyOrdersScreen extends StatelessWidget {
  final List<Order> orderList;
  const MyOrdersScreen({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      itemBuilder: (BuildContext context, int index) => OrderWidget(
        order: orderList[index],
      ),
      itemCount: orderList.length,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 24),
    );
  }
}
