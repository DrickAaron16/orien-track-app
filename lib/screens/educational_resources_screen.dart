import 'package:flutter/material.dart';
import '../mockdata/mock_data.dart';

class EducationalResourcesScreen extends StatelessWidget {
  const EducationalResourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ressources Éducatives')),
      body: ListView.builder(
        itemCount: mockCourses.length,
        itemBuilder: (context, index) {
          final course = mockCourses[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading:
                  Image.network(course.imageUrl, width: 60, fit: BoxFit.cover),
              title: Text(course.title),
              subtitle: Text(course.category),
              trailing: Text(course.price,
                  style: const TextStyle(color: Colors.orange)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(course.title),
                    content: Text(course.description),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Fermer'))
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
