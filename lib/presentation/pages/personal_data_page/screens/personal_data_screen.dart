import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalDataScreen extends StatelessWidget {
  final PersonalData personalData;
  const PersonalDataScreen({super.key, required this.personalData});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    l10n.name,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    l10n.surname,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    l10n.birthDate,
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgIconButton(
                        onPressed: () {},
                        iconPath: AppIcons.calenderIcon,
                      ),
                    ),
                    const BoxConstraints(
                      maxWidth: 36,
                      maxHeight: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    l10n.phone,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    l10n.eMail,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: const Offset(0, -7),
                  blurRadius: 15,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 127, vertical: 16),
                child: Text(
                  l10n.save,
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  InputDecoration _getTextFieldDecoration(
    String labelText, [
    Widget? suffixIcon,
    BoxConstraints? suffixIconConstraints,
  ]) =>
      InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 19),
        fillColor: AppColors.offBackgroundColor2,
        filled: true,
        labelText: labelText,
        labelStyle: AppFonts.regular16_144_5.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        floatingLabelStyle: AppFonts.regular13_144_5.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints,
      );
}
