import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/career.dart';

class CareerService {
  final String baseUrl = 'https://ton-api.com/api/careers'; // À adapter

  Future<List<Career>> getAllCareers() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Career.fromJson(e)).toList();
    }
    return [];
  }

  Future<Career?> getCareerById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return Career.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
