import 'dart:async';
import '/features/profile/controller.dart';

import '/features/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '/features/base/controller.dart';
import '/features/home/controller.dart';
import 'features/splash/controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashController()),
        ChangeNotifierProvider(create: (context) => BaseController()),
        ChangeNotifierProvider(create: (context) => HomeController()),
        ChangeNotifierProvider(create: (context) => ProfileController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coding Architecture',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const SplashScreen(),
      ),
    );
  }
}
