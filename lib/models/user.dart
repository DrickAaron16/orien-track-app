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
