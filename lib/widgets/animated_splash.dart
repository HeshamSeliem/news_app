import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class animatedSplashScreen extends StatelessWidget {
  const animatedSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 330,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color.fromARGB(255, 178, 170, 170),
      pageTransitionType: PageTransitionType.rightToLeft,
      splash:  CircleAvatar(
        radius: 200,
        backgroundImage: AssetImage('assets/splash.jpeg',),
      ),
      nextScreen: const HomeScreen(),
    );
  }
}