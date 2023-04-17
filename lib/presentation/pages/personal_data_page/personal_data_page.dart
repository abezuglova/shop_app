import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/personal_data_page/screens/personal_data_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          appBar: CustomAppBar(
            titleText: 'Личные данные',
            leading: SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.chevronLeftIcon,
            ),
          ),
          body: PersonalDataScreen(
            personalData: PersonalData(
              name: 'Сергей',
              phone: '+7 989 707 72 85',
            ),
          ),
        ),
      ),
    );
  }
}
