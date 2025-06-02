class Lesson {
  final String id;
  final String title;
  final String content;
  final String categoryId;
  final List<String> relatedCareerIds;

  Lesson({
    required this.id,
    required this.title,
    required this.content,
    required this.categoryId,
    required this.relatedCareerIds,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      categoryId: json['categoryId'],
      relatedCareerIds:
          (json['relatedCareerIds'] as List).map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'categoryId': categoryId,
        'relatedCareerIds': relatedCareerIds,
      };
}
