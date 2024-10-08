import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/presentation/views/screens/home_view.dart';
import 'package:weather_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:weather_app/features/search/presentation/views/screens/search_view.dart';
import 'package:weather_app/features/splash/presentation/views/screens/splash_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: RoutesName.kOnboardingView,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: RoutesName.kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: RoutesName.kSearchView,
        builder: (context, state) => SearchView(),
      )
    ],
  );
}

class RoutesName {
  static const String kSplashView = "/Splash";
  static const String kOnboardingView = "/Onboarding";
  static const String kHomeView = "/Home";
  static const String kSearchView = "/Search";
}
