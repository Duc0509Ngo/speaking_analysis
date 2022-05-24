import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:speaking_analysis/src/app.dart';
import 'package:speaking_analysis/src/data/models/topic_quy1.dart';
import 'package:http/http.dart' as http;

Future<TopicsQuy1> fetchSpeakingPart1Quy1Topics(http.Client client) async {
  final response =
      await client.get(Uri.parse('http://127.0.0.1:8000/speaking/part1/quy1'));

  if (response.statusCode == 200) {
    
    return TopicsQuy1.fromJson(jsonDecode(response.body)[0]);
  } else {
    throw Exception('Failed to load Speaking Topics');
  }
}

void main() {
  runApp(const RootApp());
}
