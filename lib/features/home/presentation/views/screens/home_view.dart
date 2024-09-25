import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/views/screens/home_view_body.dart';
import 'package:weather_app/features/home/presentation/views/widgets/weather_views/dark_view_body.dart';
import 'package:weather_app/features/home/presentation/views/widgets/weather_views/sunny_view_body.dart';
import 'package:weather_app/features/home/presentation/views/widgets/weather_views/light_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      // body: ThunderstormViewBody(),
      // body: SunnyViewBody(),
      // body: CloudyViewBody(),
    );
  }
}
