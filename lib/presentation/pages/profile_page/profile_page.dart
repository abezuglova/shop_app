import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/assets/app_colors.dart';
import 'package:third_task/presentation/assets/app_fonts.dart';
import 'package:third_task/presentation/pages/profile_page/screens/profile_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          title: Text(
            'Профиль',
            style: AppFonts.medium16,
          ),
        ),
        body: ProfileScreen(
          personalData: PersonalData(
            name: 'Сергей',
            phone: '+7 989 707 72 85',
          ),
          bonuses: Bonuses(
            points: 250,
            level: 2,
          ),
        ),
      ),
    );
  }
}
