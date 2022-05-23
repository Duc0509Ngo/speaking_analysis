

import 'dart:convert';
import 'package:speaking_analysis/src/data/models/topic.dart';
import 'package:http/http.dart' as http;

class SpeakingTopicsAPI {
  Future<Topics> fetchSpeakingTopics(String speakingPart, String quy) async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/speaking/${speakingPart}/${quy}'));

    if (response.statusCode == 200) {
    
      return Topics.fromJson(jsonDecode(response.body)[0]);
    } else {
      throw Exception('Failed to load Speaking Topics');
    }
  }
}
