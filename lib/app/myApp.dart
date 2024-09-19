import 'package:flutter/material.dart';
import 'package:weather_app/features/splash/presentation/views/screens/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
