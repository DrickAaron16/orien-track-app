import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/quiz_answer.dart';

class QuizAnswerService {
  final String baseUrl = 'https://ton-api.com/api/quiz-answers'; // À adapter

  // Exemple : Récupération des réponses d'une question
  Future<List<QuizAnswer>> getAnswersByQuestionId(String questionId) async {
    final response =
        await http.get(Uri.parse('$baseUrl?questionId=$questionId'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => QuizAnswer.fromJson(e)).toList();
    }
    return [];
  }

  // Exemple : Récupération d'une réponse par ID
  Future<QuizAnswer?> getAnswerById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return QuizAnswer.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
