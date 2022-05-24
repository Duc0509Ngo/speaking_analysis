import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_part2_cubit.dart';
import 'package:speaking_analysis/src/views/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakingPart2Screen extends StatelessWidget {
  const SpeakingPart2Screen({Key? key}) : super(key: key);
  static const String speakingPart2ScreenRoute = '/speaking_part2';
  void _launchUrl(url) async {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: MaterialButton(
          color: Colors.white,
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: BlocBuilder<SpeakingPart2Cubit, List>(
        builder: (context, topics) {
          return ListView.builder(
              itemCount: topics.length,
              itemBuilder: (_, i) {
                final Uri url = Uri.parse(topics[i]['url']);
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, right: 15.0, left: 15.0),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                '${topics[i]['topic']}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            TextButton(
                              onPressed: () {
                                _launchUrl(url);
                              },
                              child: Text(
                                'Click here',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Style.colors[1],
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                );
              });
        },
      ),
    );
  }
}
