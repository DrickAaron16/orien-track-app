import 'package:flutter/material.dart';
import '../mockdata/mock_data.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: ListView.builder(
        itemCount: mockMessages.length,
        itemBuilder: (context, index) {
          final msg = mockMessages[index];
          return ListTile(
            leading: CircleAvatar(child: Text(msg.sender[0])),
            title: Text(msg.sender),
            subtitle: Text(msg.content),
            trailing: Text(msg.time, style: const TextStyle(fontSize: 12)),
          );
        },
      ),
    );
  }
}
