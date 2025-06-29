import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

class UserService {
  final String baseUrl = 'https://ton-api.com/api/users'; // À adapter

  // Exemple : Authentification d'un utilisateur
  Future<User?> authenticate(String email, String password) async {
    final response = await http.post(
      Uri.parse(' baseUrl/auth'),
      body: jsonEncode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  // Exemple : Création d'un utilisateur
  Future<User?> createUser(User user) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      body: jsonEncode(user.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  // Exemple : Récupération d'un utilisateur par ID
  Future<User?> getUserById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
