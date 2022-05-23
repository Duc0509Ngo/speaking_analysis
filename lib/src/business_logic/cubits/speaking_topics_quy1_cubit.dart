import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/data/data_providers/speaking_topics_provider.dart';
import 'package:speaking_analysis/src/data/models/topic_quy1.dart';

class SpeakingPart1Quy1TopicsCubit extends Cubit<TopicsQuy1> {
  SpeakingPart1Quy1TopicsCubit()
      : super(const TopicsQuy1(
            occurrence_Advertisement: 0,
            occurrence_animal_pets: 0,
            occurrence_apps: 0,
            occurrence_arts: 0,
            occurrence_cars: 0,
            occurrence_cartoon: 0,
            occurrence_cinemas: 0,
            occurrence_colors: 0,
            occurrence_concentration: 0,
            occurrence_daily_routines: 0,
            occurrence_dreams: 0,
            occurrence_emails: 0,
            occurrence_evening_activities: 0,
            occurrence_got_lost: 0,
            occurrence_handwriting: 0,
            occurrence_headphones: 0,
            occurrence_history: 0,
            occurrence_home: 0,
            occurrence_hometown: 0,
            occurrence_leisure_activities: 0,
            occurrence_lost_items: 0,
            occurrence_mirrors: 0,
            occurrence_science: 0,
            occurrence_public_parks: 0,
            occurrence_shoes: 0,
            occurrence_shopping: 0,
            occurrence_spending_time: 0,
            occurrence_sports: 0,
            occurrence_street_markets: 0,
            occurrence_study_work: 0,
            occurrence_take_photos: 0,
            occurrence_time_management: 0,
            occurrence_tv_program: 0,
            occurrence_websites: 0,
            occurrence_weekend: 0));

  SpeakingTopicsAPI api = SpeakingTopicsAPI();
  void getTopicsPart1() async {
    TopicsQuy1 topics = await api.fetchSpeakingPart1Quy1Topics();
    emit(topics);
  }
}
