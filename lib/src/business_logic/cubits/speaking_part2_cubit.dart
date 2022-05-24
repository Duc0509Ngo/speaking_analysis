import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/data/data_providers/speaking_topics_provider.dart';

class SpeakingPart2Cubit extends Cubit<List> {
  SpeakingPart2Cubit()
      : super(
          [],
        );
  SpeakingTopicsAPI api = SpeakingTopicsAPI();
  void getSpeakingPart2Topics(String quy) async {
    List topics;
    if (quy == 'quy1') {
      topics = await api.fetchSpeakingPart2Quy1Topics();
    } else {
      topics = await api.fetchSpeakingPart2Quy2Topics();
    }
    emit(topics);
  }
}
