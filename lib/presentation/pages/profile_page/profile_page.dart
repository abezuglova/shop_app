import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/pages/profile_page/screens/profile_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: l10n.profile,
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
    );
  }
}
