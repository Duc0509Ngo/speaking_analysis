import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:speaking_analysis/src/data/models/topic_quy1.dart';
import 'app_test.mocks.dart';
import 'package:speaking_analysis/main.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetch Speaking Part 1 Quy 1', () {
    test('returns a TopicsQuy1 if the http call completes successfully',
        () async {
      final client = MockClient();

      when(client.get(Uri.parse('http://127.0.0.1:8000/speaking/part1/quy1')))
          .thenAnswer((_) async => http.Response(
              '[{"Time_management": 2, "Emails": 4, "Concentration": 6,"Shoes": 7,"Taking_photos": 1,"Spending_time_with_others": 3,"Apps": 2,"Shopping": 1,"Daily_routines": 8,"Cars": 3,"Science": 2,"History": 1,"Sports": 3,"Hometown": 32,"Cinemas": 2,"TV_program": 2,"Got_lost": 2,"Study_work": 33,"Evening_activities": 1,"Colors": 5,"Public_parks": 3,"Cartoon": 1,"Arts": 5,"Dreams": 4,"Headphones": 7,"Weekend": 1,"Leisure_activities": 1,"Lost_items": 2,"Websites": 6,"Mirrors": 7,"Handwriting": 5,"Home": 2,"Street_markets": 4,"Advertisement": 1,"Animal_Pets": 5}]',
              200));

      expect(await fetchSpeakingPart1Quy1Topics(client), isA<TopicsQuy1>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      when(client.get(Uri.parse('http://127.0.0.1:8000/speaking/part1/quy1')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchSpeakingPart1Quy1Topics(client), throwsException);
    });
  });
}
