import 'package:flutter/material.dart';
import 'package:rastourant_app1/features/Auth/presentation/pages/LogIn_Page/Screen/login_page.dart';
import 'package:rastourant_app1/features/Auth/presentation/pages/SignUp_Page/Screen/signup_page.dart';
import 'package:rastourant_app1/features/Start/OnBoardingOne/Screens/on_boarding_one.dart';
import 'package:rastourant_app1/features/Start/OnBoardingTwo/Screens/on_boarding_two.dart';

import '../../features/Splash/splash_page.dart';
import 'routes_name.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return createSlideTransation(
          const SplashPage(),
          const Offset(0.1, 1.0),
        );
      case RoutesName.onboardingOne:
        return createSlideTransation(
          const OnBoardingOne(),
          const Offset(0.1, 1.0),
        );
        case RoutesName.onboardingTwo:
        return createSlideTransation(
          const OnBoardingTwo(),
          const Offset(0.1, 1.0),
        );
         case RoutesName.logIN:
        return createSlideTransation(
           LoginPage(),
          const Offset(0.1, 1.0),
        );
         case RoutesName.signUp:
        return createSlideTransation(
          const SignupPage(),
          const Offset(0.1, 1.0),
        );
        default:
        return onUnknownRoute(settings);
    }
  }

  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}

Route createSlideTransation(Widget page, Offset offset) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 600),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var curve = Curves.easeIn;
      var curveAnimation = CurvedAnimation(parent: animation, curve: curve);
      return SlideTransition(
        position: Tween<Offset>(
          begin: offset,
          end: Offset.zero,
        ).animate(curveAnimation),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) => page,
  );
}
