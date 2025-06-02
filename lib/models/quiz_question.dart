import 'quiz_answer.dart';

class QuizQuestion {
  final String id;
  final String question;
  final List<QuizAnswer> options;
  final String correctAnswerId;

  QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswerId,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['id'],
      question: json['question'],
      options:
          (json['options'] as List).map((e) => QuizAnswer.fromJson(e)).toList(),
      correctAnswerId: json['correctAnswerId'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'question': question,
        'options': options.map((o) => o.toJson()).toList(),
        'correctAnswerId': correctAnswerId,
      };
}
