import '/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/core/theme/textfont_styles.dart';
import '/features/profile/controller.dart';
import '/core/shared/widgets/reusable_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ProfileController>();

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: reusableAppBar(
          backgroundColor: AppColors.appBarColor, title: "Profile"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              'Profile Screen',
              style: getMediumStyle(fontSize: 16, color: AppColors.textColor1),
            ),
          ],
        ),
      ),
    );
  }
}
