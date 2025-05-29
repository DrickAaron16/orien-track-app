// ===================== User =====================
class User {
  final String id;
  final String fullName;
  final String email;
  final int age;
  final String degree;
  final String selectedCareerId;
  final List<String> completedLessons;
  final Map<String, num> quizScores;
  final String role; // "student" ou "admin"

  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.age,
    required this.degree,
    required this.selectedCareerId,
    required this.completedLessons,
    required this.quizScores,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
      age: json['age'],
      degree: json['degree'],
      selectedCareerId: json['selectedCareerId'],
      completedLessons:
          (json['completedLessons'] as List).map((e) => e.toString()).toList(),
      quizScores: Map<String, num>.from(json['quizScores'] ?? {}),
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'email': email,
        'age': age,
        'degree': degree,
        'selectedCareerId': selectedCareerId,
        'completedLessons': completedLessons,
        'quizScores': quizScores,
        'role': role,
      };
}

// ===================== Career =====================
class Career {
  final String id;
  final String name;
  final String description;
  final String sector;
  final num minSalary;
  final num maxSalary;
  final List<String> requiredSkills;
  final String jobOutlook;
  final String minimumDegreeRequired;
  final String maximumDegreeRequired;
  final List<String> relatedLessons;
  final String quizId;
  final String image;

  Career({
    required this.id,
    required this.name,
    required this.description,
    required this.sector,
    required this.minSalary,
    required this.maxSalary,
    required this.requiredSkills,
    required this.jobOutlook,
    required this.minimumDegreeRequired,
    required this.maximumDegreeRequired,
    required this.relatedLessons,
    required this.quizId,
    required this.image,
  });

  factory Career.fromJson(Map<String, dynamic> json) {
    return Career(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      sector: json['sector'],
      minSalary: json['minSalary'],
      maxSalary: json['maxSalary'],
      requiredSkills:
          (json['requiredSkills'] as List).map((e) => e.toString()).toList(),
      jobOutlook: json['jobOutlook'],
      minimumDegreeRequired: json['minimumDegreeRequired'],
      maximumDegreeRequired: json['maximumDegreeRequired'],
      relatedLessons:
          (json['relatedLessons'] as List).map((e) => e.toString()).toList(),
      quizId: json['quizId'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'sector': sector,
        'minSalary': minSalary,
        'maxSalary': maxSalary,
        'requiredSkills': requiredSkills,
        'jobOutlook': jobOutlook,
        'minimumDegreeRequired': minimumDegreeRequired,
        'maximumDegreeRequired': maximumDegreeRequired,
        'relatedLessons': relatedLessons,
        'quizId': quizId,
        'image': image,
      };
}

// ===================== Lesson =====================
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

// ===================== Category =====================
class Category {
  final String id;
  final String name;
  final String description;
  final List<String> careers;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.careers,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      careers: (json['careers'] as List).map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'careers': careers,
      };
}

// ===================== Quiz =====================
class Quiz {
  final String id;
  final String title;
  final String description;
  final List<QuizQuestion> questions;

  Quiz({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      questions: (json['questions'] as List)
          .map((e) => QuizQuestion.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'questions': questions.map((q) => q.toJson()).toList(),
      };
}

// ===================== QuizQuestion =====================
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

// ===================== QuizAnswer =====================
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
