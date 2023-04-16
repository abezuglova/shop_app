import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';

class FiltersWidget extends StatefulWidget {
  final List<ProductType> productTypes;
  const FiltersWidget({super.key, required this.productTypes});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.appBarShadowColor.withOpacity(0.06),
            offset: const Offset(0, 7),
            blurRadius: 15,
          ),
        ],
      ),
      // child: TabBar(
      //   tabs: widget.productTypes
      //       .map(
      //         (type) => GestureDetector(
      //           child: Container(
      //             margin: const EdgeInsets.symmetric(horizontal: 4),
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               border: Border.all(
      //                 color: AppColors.dividerColor,
      //               ),
      //               borderRadius: const BorderRadius.all(
      //                 Radius.circular(61),
      //               ),
      //             ),
      //             child: Text(type.name),
      //           ),
      //         ),
      //       )
      //       .toList(),
      // ),
    );
  }
}
