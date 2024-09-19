import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/features/splash/presentation/views/widgets/sliding_text_anaimation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    SlidingAnimationHelper();
    NavigateHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradientbackground(kSplashBackgroundColorList),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(ImageManager.appLogo),
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20),
          SlidingTextAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void SlidingAnimationHelper() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  void NavigateHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(RoutesName.kHomeView);
      },
    );
  }
}
