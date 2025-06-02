class QuizAnswer {
  final String id;
  final String text;

  QuizAnswer({
    required this.id,
    required this.text,
  });

  factory QuizAnswer.fromJson(Map<String, dynamic> json) {
    return QuizAnswer(
      id: json['id'],
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
      };
}
