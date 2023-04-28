import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/main_page/widgets/advertisement_card_widget.dart';
import 'package:third_task/presentation/utils/app_colors.dart';

class AdvertisementListWidget extends StatelessWidget {
  final List<Advertisement> advertisementList;
  const AdvertisementListWidget({super.key, required this.advertisementList});

  @override
  Widget build(BuildContext context) {
    final colors = [
      AppColors.promoColor1,
      AppColors.promoColor2,
      AppColors.promoColor3,
    ];
    return SizedBox(
      height: 272,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 36),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            AdvertisementCardWidget(
          advertisement: advertisementList[index],
          color: colors[index % colors.length],
        ),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 8),
        itemCount: advertisementList.length,
      ),
    );
  }
}
