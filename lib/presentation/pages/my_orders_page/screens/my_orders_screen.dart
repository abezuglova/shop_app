import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/my_orders_page/widgets/order_widget.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class MyOrdersScreen extends StatelessWidget {
  final List<Order> orderList;
  const MyOrdersScreen({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return ShadowWrapper(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 32.h,
        ),
        itemBuilder: (BuildContext context, int index) => OrderWidget(
          order: orderList[index],
        ),
        itemCount: orderList.length,
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: 24.h),
      ),
    );
  }
}
