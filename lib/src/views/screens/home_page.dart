import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_cubit.dart';
import 'package:speaking_analysis/src/views/screens/speaking_part1_quy1.dart';
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
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 1 Quy 2',
                  colorTitle: Style.colors[1],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 2 Quy 1',
                  colorTitle: Style.colors[2],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                OptionHomeScreenWidget(
                  title: 'Speaking Part 2 Quy 2',
                  colorTitle: Style.colors[4],
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
  }) : super(key: key);
  final String title;
  final Color colorTitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<SpeakingTopicsCubit>(context).getTopics('part1','quy1');
          Navigator.pushNamed(
              context, SpeakingPart1Quy1Screen.speakingPart1Quy1Route);
        },
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
