import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy1_cubit.dart';
import 'package:speaking_analysis/src/views/screens/customized_bar_chart.dart';

class PageViewSpeakingPart1Quy1 extends StatelessWidget {
  const PageViewSpeakingPart1Quy1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeakingPart1Quy1TopicsCubit, dynamic>(
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
              tileAxis2: 'Sports',
              tileAxis3: 'Arts',
              tileAxis4: 'Lost items',
              tileAxis5: 'Home',
              occurrenceTopic1: topics.occurrence_study_work,
              occurrenceTopic2: topics.occurrence_sports,
              occurrenceTopic3: topics.occurrence_arts,
              occurrenceTopic4: topics.occurrence_lost_items,
              occurrenceTopic5: topics.occurrence_home,
            ),
            CustomizedBarChart(
              tileAxis1: 'Time management',
              tileAxis2: 'Taking photos',
              tileAxis3: 'Daily routines',
              tileAxis4: 'Hometown',
              tileAxis5: 'Evening activities',
              occurrenceTopic1: topics.occurrence_time_management,
              occurrenceTopic2: topics.occurrence_take_photos,
              occurrenceTopic3: topics.occurrence_daily_routines,
              occurrenceTopic4: topics.occurrence_hometown,
              occurrenceTopic5: topics.occurrence_evening_activities,
            ),
            CustomizedBarChart(
              tileAxis1: 'Dreams',
              tileAxis2: 'Websites',
              tileAxis3: 'Street markets',
              tileAxis4: 'Emails',
              tileAxis5: 'Spending time with others',
              occurrenceTopic1: topics.occurrence_dreams,
              occurrenceTopic2: topics.occurrence_websites,
              occurrenceTopic3: topics.occurrence_street_markets,
              occurrenceTopic4: topics.occurrence_emails,
              occurrenceTopic5: topics.occurrence_spending_time,
            ),
            CustomizedBarChart(
              tileAxis1: 'Cars',
              tileAxis2: 'Cinemas',
              tileAxis3: 'Colors',
              tileAxis4: 'Headphones',
              tileAxis5: 'Mirrors',
              occurrenceTopic1: topics.occurrence_cars,
              occurrenceTopic2: topics.occurrence_cinemas,
              occurrenceTopic3: topics.occurrence_colors,
              occurrenceTopic4: topics.occurrence_headphones,
              occurrenceTopic5: topics.occurrence_mirrors,
            ),
            CustomizedBarChart(
              tileAxis1: 'Advertisement',
              tileAxis2: 'Concentration',
              tileAxis3: 'Apps',
              tileAxis4: 'Science',
              tileAxis5: 'TV programs',
              occurrenceTopic1: topics.occurrence_Advertisement,
              occurrenceTopic2: topics.occurrence_concentration,
              occurrenceTopic3: topics.occurrence_apps,
              occurrenceTopic4: topics.occurrence_science,
              occurrenceTopic5: topics.occurrence_tv_program,
            ),
            CustomizedBarChart(
              tileAxis1: 'Weekends',
              tileAxis2: 'Handwriting',
              tileAxis3: 'Animal/Pets',
              tileAxis4: 'Shoes',
              tileAxis5: 'Shopping',
              occurrenceTopic1: topics.occurrence_weekend,
              occurrenceTopic2: topics.occurrence_handwriting,
              occurrenceTopic3: topics.occurrence_animal_pets,
              occurrenceTopic4: topics.occurrence_shoes,
              occurrenceTopic5: topics.occurrence_shopping,
            ),
            CustomizedBarChart(
              tileAxis1: 'History',
              tileAxis2: 'Got lost',
              tileAxis3: 'Public/parks',
              tileAxis4: 'Cartoon',
              tileAxis5: 'Leisure activities',
              occurrenceTopic1: topics.occurrence_history,
              occurrenceTopic2: topics.occurrence_got_lost,
              occurrenceTopic3: topics.occurrence_public_parks,
              occurrenceTopic4: topics.occurrence_cartoon,
              occurrenceTopic5: topics.occurrence_leisure_activities,
            ),
          ],
        );
      },
    );
  }
}
