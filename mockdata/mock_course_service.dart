import 'mock_data.dart';
import 'dart:async';

class MockCourseService {
  Future<List<MockCourse>> getAllCourses() async {
    await Future.delayed(
        const Duration(milliseconds: 500)); // Simule un délai réseau
    return mockCourses;
  }

  Future<MockCourse?> getCourseById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return mockCourses.firstWhere((c) => c.id == id);
    } catch (e) {
      return null;
    }
  }
}
