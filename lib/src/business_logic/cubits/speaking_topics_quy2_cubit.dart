import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/data/data_providers/speaking_topics_provider.dart';
import 'package:speaking_analysis/src/data/models/topic_quy2.dart';

class SpeakingPart1Quy2TopicsCubit extends Cubit<TopicsQuy2> {
  SpeakingPart1Quy2TopicsCubit()
      : super(const TopicsQuy2(
          occurrence_afternoon: 0,
          occurrence_arts: 0,
          occurrence_book: 0,
          occurrence_cars: 0,
          occurrence_cinema: 0,
          occurrence_collecting: 0,
          occurrence_colors: 0,
          occurrence_daily_routines: 0,
          occurrence_dreams: 0,
          occurrence_email: 0,
          occurrence_evening_activities: 0,
          occurrence_health_fitness: 0,
          occurrence_history: 0,
          occurrence_home: 0,
          occurrence_hometown: 0,
          occurrence_keep_things: 0,
          occurrence_lost_items: 0,
          occurrence_mirrors: 0,
          occurrence_museum: 0,
          occurrence_phones: 0,
          occurrence_sports: 0,
          occurrence_stay_up_late: 0,
          occurrence_stranger: 0,
          occurrence_street_markets: 0,
          occurrence_study_work: 0,
          occurrence_take_photos: 0,
          occurrence_talent: 0,
          occurrence_tidy: 0,
          occurrence_time_management: 0,
          occurrence_websites: 0,
        ));

  SpeakingTopicsAPI api = SpeakingTopicsAPI();
  void getTopicsPart1() async {
    TopicsQuy2 topics = await api.fetchSpeakingPart1Quy2Topics();
    emit(topics);
  }
}
