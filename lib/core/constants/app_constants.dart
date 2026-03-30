import '/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static GlobalKey bottomBarKey = GlobalKey();
  static ValueNotifier<int> badgeVal = ValueNotifier(0);
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static String authToken = "";

  static funcShowSnackBar(BuildContext context, String messageStr) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        width: 200,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        behavior: SnackBarBehavior.floating,
        content: Text(messageStr),
      ),
    );
  }

  static void showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  static void navigate(
    Widget page, {
    BuildContext? context,
    String type = 'rightToLeft',
    bool keep = false,
  }) {
    final navigator =
        context != null ? Navigator.of(context) : navigatorKey.currentState;

    if (navigator == null) {
      debugPrint("❌ Navigation failed: No navigator available.");
      return;
    }

    Offset startOffset;

    switch (type) {
      case 'leftToRight':
        startOffset = const Offset(-1.0, 0.0);
        break;
      case 'bottomToTop':
        startOffset = const Offset(0.0, 1.0);
        break;
      case 'topToBottom':
        startOffset = const Offset(0.0, -1.0);
        break;
      case 'rightToLeft':
      default:
        startOffset = const Offset(1.0, 0.0);
        break;
    }

    final route = PageRouteBuilder(
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, anim, __, child) {
        final tween = Tween(
          begin: startOffset,
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut));

        return SlideTransition(position: anim.drive(tween), child: child);
      },
      transitionDuration: const Duration(milliseconds: 300),
    );

    if (keep) {
      navigator.push(route);
    } else {
      navigator.pushAndRemoveUntil(route, (_) => false);
    }
  }
}
