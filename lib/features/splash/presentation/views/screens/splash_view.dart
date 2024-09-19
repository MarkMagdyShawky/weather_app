import 'package:flutter/material.dart';
import 'package:weather_app/features/splash/presentation/views/screens/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
