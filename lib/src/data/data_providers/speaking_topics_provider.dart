import 'dart:convert';
import 'package:speaking_analysis/src/data/models/topic_quy1.dart';
import 'package:http/http.dart' as http;
import 'package:speaking_analysis/src/data/models/topic_quy2.dart';


class SpeakingTopicsAPI {
  Future<TopicsQuy1> fetchSpeakingPart1Quy1Topics() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/speaking/part1/quy1'));

    if (response.statusCode == 200) {
      return TopicsQuy1.fromJson(jsonDecode(response.body)[0]);
    } else {
      throw Exception('Failed to load Speaking Topics');
    }
  }

  Future<TopicsQuy2> fetchSpeakingPart1Quy2Topics() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/speaking/part1/quy2'));

    if (response.statusCode == 200) {
      return TopicsQuy2.fromJson(jsonDecode(response.body)[0]);
    } else {
      throw Exception('Failed to load Speaking Topics');
    }
  }

  Future<List> fetchSpeakingPart2Quy1Topics() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/speaking/part2/quy1'));


    if (response.statusCode == 200) {

      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load Speaking Topics');
    }
  }

  Future<List> fetchSpeakingPart2Quy2Topics() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/speaking/part2/quy2'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load Speaking Topics');
    }
  }
}
