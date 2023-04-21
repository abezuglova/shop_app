import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/navigation/custom_bottom_nav_bar.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  final String location;
  const ScaffoldWithBottomNavBar({
    super.key,
    required this.child,
    required this.location,
  });

  final Widget child;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  int _currentIndex = 0;

  late List<CustomNavBarItemData> tabs;
  @override
  void didChangeDependencies() {
    final l10n = AppLocalizations.of(context)!;
    super.didChangeDependencies();
    tabs = [
      CustomNavBarItemData(
        title: l10n.mainPage,
        location: '/',
        iconPath: AppIcons.mainPageIcon,
      ),
      CustomNavBarItemData(
        title: l10n.catalog,
        location: '/catalog',
        iconPath: AppIcons.catalogIcon,
      ),
      CustomNavBarItemData(
        title: l10n.search,
        location: '/search',
        iconPath: AppIcons.searchIcon,
      ),
      CustomNavBarItemData(
        title: l10n.shoppingCart,
        location: '/shopping_cart',
        iconPath: AppIcons.shoppingCartNavIcon,
      ),
      CustomNavBarItemData(
        title: l10n.profile,
        location: '/profile',
        iconPath: AppIcons.profileIcon,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            widget.child,
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavBar(
                onTap: (int index) {
                  _goOtherTab(context, index);
                },
                currentIndex: _currentIndex,
                tabs: tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goOtherTab(BuildContext context, int index) {
    if (index == _currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].location;

    setState(() {
      _currentIndex = index;
    });

    router.go(location);
  }
}

class CustomNavBarItemData {
  final String title;
  final String location;
  final String iconPath;

  CustomNavBarItemData({
    required this.title,
    required this.location,
    required this.iconPath,
  });
}
