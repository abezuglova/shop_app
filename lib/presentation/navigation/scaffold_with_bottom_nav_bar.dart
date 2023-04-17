import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/navigation/custom_bottom_nav_bar.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

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

  final tabs = [
    CustomNavBarItemData(
      title: 'Главная',
      location: '/',
      iconPath: AppIcons.mainPageIcon,
    ),
    CustomNavBarItemData(
      title: 'Каталог',
      location: '/catalog',
      iconPath: AppIcons.catalogIcon,
    ),
    CustomNavBarItemData(
      title: 'Поиск',
      location: '/search',
      iconPath: AppIcons.searchIcon,
    ),
    CustomNavBarItemData(
      title: 'Корзина',
      location: '/shopping_cart',
      iconPath: AppIcons.shoppingCartNavIcon,
    ),
    CustomNavBarItemData(
      title: 'Профиль',
      location: '/profile',
      iconPath: AppIcons.profileIcon,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.child),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (int index) {
          _goOtherTab(context, index);
        },
        currentIndex: _currentIndex,
        tabs: tabs,
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
