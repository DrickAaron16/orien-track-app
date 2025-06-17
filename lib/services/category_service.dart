import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/category.dart';

class CategoryService {
  final String baseUrl = 'https://ton-api.com/api/categories'; // À adapter

  Future<List<Category>> getAllCategories() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Category.fromJson(e)).toList();
    }
    return [];
  }

  Future<Category?> getCategoryById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return Category.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
