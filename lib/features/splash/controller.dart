import '/features/base/view.dart';
import 'package:flutter/material.dart';
import '/core/constants/app_constants.dart';

class SplashController extends ChangeNotifier {
  Future<void> init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    if (context.mounted) {
      AppConstants.navigate(
        context: context,
        BaseScreen(),
        keep: false,
      );
    }
  }
}
