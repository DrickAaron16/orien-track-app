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
