import 'package:flutter/material.dart';

class CareerOpportunitiesScreen extends StatelessWidget {
  const CareerOpportunitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opportunités de Carrière')),
      body: const Center(
        child: Text('Contenu des Opportunités de Carrière'),
      ),
    );
  }
}
