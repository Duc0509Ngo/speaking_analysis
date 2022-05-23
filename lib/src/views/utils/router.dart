import 'package:flutter/material.dart';
import 'package:speaking_analysis/src/views/screens/home_page.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part1_quy1.dart';


class RouterNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.homeScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case SpeakingPart1Quy1Screen.speakingPart1Quy1Route:
        return MaterialPageRoute(
          builder: (_) => const SpeakingPart1Quy1Screen(),
        );

      

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
