import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/quy_cubit.dart';
import 'package:speaking_analysis/src/views/screens/page_view/page_view_speaking_part1_quy1.dart';
import 'package:speaking_analysis/src/views/screens/page_view/page_view_speaking_part1_quy2.dart';
import 'package:speaking_analysis/src/views/utils/circle_bar.dart';

class SpeakingPart1Screen extends StatelessWidget {
  const SpeakingPart1Screen({Key? key}) : super(key: key);
  static const speakingPart1Screen = '/speaking_part1_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Speaking Analysis',
            style: TextStyle(color: Colors.black, fontSize: 21.0)),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        child: BlocBuilder<QuyCubit, String>(
          builder: (context, quy) {
            return Stack(
              children: <Widget>[
                // ignore: unrelated_type_equality_checks
                quy == 'quy1'
                    ? const PageViewSpeakingPart1Quy1()
                    : const PageViewSpeakingPart1Quy2(),

                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 55),
                        child: BlocBuilder<PageViewNavigationCubit, int>(
                          builder: (context, currentPage) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < 7; i++)
                                  (i == currentPage
                                      ? const CircleBar(isActive: true)
                                      : const CircleBar(isActive: false))
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}