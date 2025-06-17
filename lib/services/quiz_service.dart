import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/quiz.dart';

class QuizService {
  final String baseUrl = 'https://ton-api.com/api/quizzes'; // À adapter

  Future<List<Quiz>> getAllQuizzes() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Quiz.fromJson(e)).toList();
    }
    return [];
  }

  Future<Quiz?> getQuizById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return Quiz.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
