
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_interview/presentation/home/home.dart';
import 'package:task_interview/presentation/questions/question.dart';
import 'package:task_interview/presentation/splash_screen/splash_screen.dart';

import 'Constants/Routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
        break;
      case Routes.home_page:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
        break;
      case Routes.questions:
        return MaterialPageRoute(
          builder: (context) => const QuestionPage(),
        );
        break;
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}