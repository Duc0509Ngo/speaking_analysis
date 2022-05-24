import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy2_cubit.dart';
import 'package:speaking_analysis/src/data/models/topic_quy2.dart';
import 'package:speaking_analysis/src/views/screens/customized_bar_chart.dart';

class PageViewSpeakingPart1Quy2 extends StatelessWidget {
  const PageViewSpeakingPart1Quy2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeakingPart1Quy2TopicsCubit, TopicsQuy2>(
      builder: (context, topics) {
        return PageView(
          onPageChanged: (int currentPageIndex) {
            BlocProvider.of<PageViewNavigationCubit>(context)
                .onPageChanged(currentPageIndex);
          },
          controller: PageController(initialPage: 0),
          children: [
            CustomizedBarChart(
              tileAxis1: 'Study/work',
              tileAxis2: 'Afternoon',
              tileAxis3: 'Sports',
              tileAxis4: 'Arts',
              tileAxis5: 'Lost items',
              occurrenceTopic1: topics.occurrence_study_work,
              occurrenceTopic2: topics.occurrence_afternoon,
              occurrenceTopic3: topics.occurrence_sports,
              occurrenceTopic4: topics.occurrence_arts,
              occurrenceTopic5: topics.occurrence_lost_items,
            ),
            CustomizedBarChart(
              tileAxis1: 'Book',
              tileAxis2: 'Home',
              tileAxis3: 'Collecting',
              tileAxis4: 'Time management',
              tileAxis5: 'Taking photos',
              occurrenceTopic1: topics.occurrence_book,
              occurrenceTopic2: topics.occurrence_home,
              occurrenceTopic3: topics.occurrence_collecting,
              occurrenceTopic4: topics.occurrence_time_management,
              occurrenceTopic5: topics.occurrence_take_photos,
            ),
            CustomizedBarChart(
              tileAxis1: 'Daily routines',
              tileAxis2: 'Hometown',
              tileAxis3: 'Evening activities',
              tileAxis4: 'Phones',
              tileAxis5: 'Talent',
              occurrenceTopic1: topics.occurrence_daily_routines,
              occurrenceTopic2: topics.occurrence_hometown,
              occurrenceTopic3: topics.occurrence_evening_activities,
              occurrenceTopic4: topics.occurrence_phones,
              occurrenceTopic5: topics.occurrence_talent,
            ),
            CustomizedBarChart(
              tileAxis1: 'Stranger',
              tileAxis2: 'Keep things',
              tileAxis3: 'Dreams',
              tileAxis4: 'Websites',
              tileAxis5: 'Street markets',
              occurrenceTopic1: topics.occurrence_stranger,
              occurrenceTopic2: topics.occurrence_keep_things,
              occurrenceTopic3: topics.occurrence_dreams,
              occurrenceTopic4: topics.occurrence_websites,
              occurrenceTopic5: topics.occurrence_street_markets,
            ),
            CustomizedBarChart(
              tileAxis1: 'Health/fitness',
              tileAxis2: 'Museum',
              tileAxis3: 'Emails',
              tileAxis4: 'Stay up late',
              tileAxis5: 'Tidy',
              occurrenceTopic1: topics.occurrence_health_fitness,
              occurrenceTopic2: topics.occurrence_museum,
              occurrenceTopic3: topics.occurrence_email,
              occurrenceTopic4: topics.occurrence_stay_up_late,
              occurrenceTopic5: topics.occurrence_tidy,
            ),
            CustomizedBarChart(
              tileAxis1: 'Cars',
              tileAxis2: 'Cinema',
              tileAxis3: 'History',
              tileAxis4: 'Colors',
              tileAxis5: 'Mirrors',
              occurrenceTopic1: topics.occurrence_cars,
              occurrenceTopic2: topics.occurrence_cinema,
              occurrenceTopic3: topics.occurrence_history,
              occurrenceTopic4: topics.occurrence_colors,
              occurrenceTopic5: topics.occurrence_mirrors,
            ),
          ],
        );
      },
    );
  }
}
