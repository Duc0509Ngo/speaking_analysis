import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/quy_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_part2_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy1_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy2_cubit.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part1_screen.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part2_screen.dart';
import 'package:speaking_analysis/src/views/utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String homeScreenRoute = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(55.0),
            child: Column(
              children: [
                OptionHomeScreenWidget(
                  title: 'Speaking Part 1 Quy 1',
                  colorTitle: Style.colors[0],
                  onTap: () {
                    BlocProvider.of<SpeakingPart1Quy1TopicsCubit>(context)
                        .getTopicsPart1();
                    BlocProvider.of<QuyCubit>(context).chooseQuy('quy1');
                    Navigator.pushNamed(
                        context, SpeakingPart1Screen.speakingPart1ScreenRoute);
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 1 Quy 2',
                  colorTitle: Style.colors[1],
                  onTap: () {
                    BlocProvider.of<SpeakingPart1Quy2TopicsCubit>(context)
                        .getTopicsPart1();
                    BlocProvider.of<QuyCubit>(context).chooseQuy('quy2');
                    Navigator.pushNamed(
                        context, SpeakingPart1Screen.speakingPart1ScreenRoute);
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 2 Quy 1',
                  colorTitle: Style.colors[2],
                  onTap: () {
                    BlocProvider.of<SpeakingPart2Cubit>(context)
                        .getSpeakingPart2Topics('quy1');
                    Navigator.pushNamed(
                        context, SpeakingPart2Screen.speakingPart2ScreenRoute);
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 2 Quy 2',
                  colorTitle: Style.colors[4],
                  onTap: () {
                     BlocProvider.of<SpeakingPart2Cubit>(context)
                        .getSpeakingPart2Topics('quy2');
                    Navigator.pushNamed(
                        context, SpeakingPart2Screen.speakingPart2ScreenRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OptionHomeScreenWidget extends StatelessWidget {
  const OptionHomeScreenWidget({
    Key? key,
    required this.title,
    required this.colorTitle,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Color colorTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: colorTitle,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
