import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/personal_data_page/screens/personal_data_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: l10n.personalData,
          leading: SvgIconButton(
            onPressed: () => context.pop(),
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
    );
  }
}
