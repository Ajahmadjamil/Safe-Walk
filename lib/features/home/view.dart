import '/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/features/home/controller.dart';
import '/core/theme/textfont_styles.dart';
import '/core/shared/widgets/reusable_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar:
          reusableAppBar(backgroundColor: AppColors.appBarColor, title: "Home"),
      body: Center(
        child: Text(
          'Home Screen',
          style: getMediumStyle(fontSize: 16, color: AppColors.textColor1),
        ),
      ),
    );
  }
}
