import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/main_page/widgets/advertisement_list_widget.dart';

class MainScreen extends StatelessWidget {
  final MainPageData mainPageData;
  const MainScreen({super.key, required this.mainPageData});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 28),
        AdvertisementListWidget(
          advertisementList: mainPageData.advertisementList,
        ),
      ],
    );
  }
}
