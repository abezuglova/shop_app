import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/di.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';
import 'package:third_task/presentation/pages/already_bought_page/cubit/already_bought_cubit.dart';
import 'package:third_task/presentation/ui_kit/error_screen.dart';
import 'package:third_task/presentation/ui_kit/loading_screen.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/already_bought_page/screens/already_bought_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlreadyBoughtPage extends StatelessWidget {
  const AlreadyBoughtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BlocProvider<AlreadyBoughtCubit>(
      create: (context) => AlreadyBoughtCubit(
        catalogSectionsRepository: getIt<ICatalogSectionsRepository>(),
      )..onPageOpened(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: l10n.alreadyBought,
          leading: SvgIconButton(
            onPressed: context.pop,
            iconPath: AppIcons.chevronLeftIcon,
          ),
        ),
        body: BlocBuilder<AlreadyBoughtCubit, AlreadyBoughtState>(
          builder: (context, state) => state.map(
            loadInProgress: (state) => const LoadingScreen(),
            loadFailure: (state) => const ErrorScreen(),
            loadSuccess: (state) => AlreadyBoughtScreen(
              alreadyBoughtProducts: state.products,
            ),
          ),
        ),
      ),
    );
  }
}
