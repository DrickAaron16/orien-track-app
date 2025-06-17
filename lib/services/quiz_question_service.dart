import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/quiz_question.dart';

class QuizQuestionService {
  final String baseUrl = 'https://ton-api.com/api/quiz-questions'; // À adapter

  Future<List<QuizQuestion>> getQuestionsByQuizId(String quizId) async {
    final response = await http.get(Uri.parse('$baseUrl?quizId=$quizId'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => QuizQuestion.fromJson(e)).toList();
    }
    return [];
  }

  Future<QuizQuestion?> getQuestionById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return QuizQuestion.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
