import 'package:flutter/material.dart';
import 'package:third_task/presentation/assets/app_icons.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Говядина',
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
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
