import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/di.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_main_repository.dart';
import 'package:third_task/presentation/pages/main_page/cubit/main_cubit.dart';
import 'package:third_task/presentation/ui_kit/error_screen.dart';
import 'package:third_task/presentation/ui_kit/loading_screen.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/main_page/screens/main_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BlocProvider<MainCubit>(
      create: (context) => MainCubit(
        mainRepository: getIt<IMainRepository>(),
      )..onPageOpened(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          title: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcons.smallDeliveryIcon),
                SizedBox(width: 8.w),
                Text(
                  l10n.mockAddress,
                  style: AppFonts.medium14,
                ),
              ],
            ),
          ),
        ),
        body: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) => state.map(
            loadInProgress: (state) => const LoadingScreen(),
            loadFailure: (state) => const ErrorScreen(),
            loadSuccess: (state) => MainScreen(
              mainPageData: MainPageData(
                advertisementList: state.advertisementList,
                popularCategories: state.popularCategories,
                bestDeals: state.bestDealsProductList,
                alreadyBoughtList: state.alreadyBoughtProductList,
                brandList: state.brandList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
