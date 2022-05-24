import 'package:flutter/material.dart';
import 'package:speaking_analysis/src/views/screens/home_screen.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part1_screen.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part2_screen.dart';

class RouterNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.homeScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case SpeakingPart1Screen.speakingPart1ScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SpeakingPart1Screen(),
        );
      case SpeakingPart2Screen.speakingPart2ScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SpeakingPart2Screen(),
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
