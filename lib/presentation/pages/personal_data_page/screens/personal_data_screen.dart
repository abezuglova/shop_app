// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class PersonalDataScreen extends StatelessWidget {
  final PersonalData personalData;
  const PersonalDataScreen({super.key, required this.personalData});

  @override
  Widget build(BuildContext context) {
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
                    'Имя',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    'Фамилия',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    'Дата рождения',
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgIconButton(
                        onPressed: () {},
                        iconPath: AppIcons.calenderIcon,
                      ),
                    ),
                    BoxConstraints(
                      maxWidth: 36,
                      maxHeight: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    'Телефон',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  style: AppFonts.medium16_144_5,
                  decoration: _getTextFieldDecoration(
                    'E-mail',
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
                  'Сохранить',
                  style: AppFonts.semiBold18.copyWith(
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
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 19),
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
