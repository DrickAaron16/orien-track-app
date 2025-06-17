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
