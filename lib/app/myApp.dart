import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/color_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: "Inter",
      ),
      routerConfig: AppRouter.router,
    );
  }
}
