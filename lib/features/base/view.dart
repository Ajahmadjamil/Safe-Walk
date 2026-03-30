import '/core/theme/app_colors.dart';

import '/features/home/view.dart';
import '/features/profile/view.dart';
import '/features/base/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  final List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<BaseController>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: IndexedStack(
          index: controller.currentIndex,
          children: screens,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: AppColors.navBarColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: AppColors.activeNavBarIconColor,
            color: AppColors.inActiveNavBarIconColor,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
            selectedIndex: controller.currentIndex,
            onTabChange: (index) => controller.setIndex(index),
          ),
        ),
      ),
    );
  }
}
