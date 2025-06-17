import 'package:flutter/material.dart';
import '../mockdata/mock_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(mockUser.avatarUrl),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(mockUser.name,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(mockUser.email, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Modifier le profil'),
            ),
          ],
        ),
      ),
    );
  }
}
