
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1500,
      splashIconSize: 200.sp,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(milliseconds: 1500),
      splash: const Image(
        image: AssetImage("assets/images/logo.png"),
      ),
      nextScreen: const HomeScreen(),
      backgroundColor: MyColors.myBlue,
    );
  }
}