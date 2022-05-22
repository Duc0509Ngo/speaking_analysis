import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_cubit.dart';
import 'package:speaking_analysis/src/views/screens/home_screen.dart';
import 'package:speaking_analysis/src/views/utils/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String splashScreenRoute = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 75.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash_screen_image.png'),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 55.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Phân tích tần suất của đề thi speaking IELTS theo từng quý 1 cách dề dàng cùng với SpeaKa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 5),
                ),
              ),
            ),
            const SizedBox(
              height: 55.0,
            ),
            MaterialButton(
              elevation: 15,
              color: Style.colors[3],
              shape: const CircleBorder(),
              onPressed: () async {
                BlocProvider.of<SpeakingTopicsCubit>(context).getTopics();
                Navigator.pushNamed(context, HomeScreen.homeScreenRoute);
              },
              child: const Padding(
                padding: EdgeInsets.all(27.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
