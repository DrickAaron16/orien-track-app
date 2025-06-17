// Mock data pour l'application

class MockCourse {
  final String id;
  final String title;
  final String imageUrl;
  final String category;
  final String price;
  final String description;
  MockCourse(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.category,
      required this.price,
      required this.description});
}

class MockMessage {
  final String id;
  final String sender;
  final String content;
  final String time;
  MockMessage(
      {required this.id,
      required this.sender,
      required this.content,
      required this.time});
}

class MockUser {
  final String id;
  final String name;
  final String avatarUrl;
  final String email;
  MockUser(
      {required this.id,
      required this.name,
      required this.avatarUrl,
      required this.email});
}

final List<MockCourse> mockCourses = [
  MockCourse(
      id: '1',
      title: 'UI Design',
      imageUrl: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
      category: 'Design',
      price: '19.99€',
      description: 'Apprenez les bases du design d\'interface utilisateur.'),
  MockCourse(
      id: '2',
      title: 'Business',
      imageUrl: 'https://images.unsplash.com/photo-1515168833906-d2a3b82b3029',
      category: 'Business',
      price: '24.99€',
      description:
          'Développez vos compétences en business et entrepreneuriat.'),
  MockCourse(
      id: '3',
      title: 'Marketing',
      imageUrl: 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6',
      category: 'Marketing',
      price: '14.99€',
      description: 'Maîtrisez les bases du marketing digital.'),
];

final List<MockMessage> mockMessages = [
  MockMessage(
      id: '1',
      sender: 'Mentor',
      content: 'Bonjour, prêt pour le prochain cours ?',
      time: '09:00'),
  MockMessage(
      id: '2',
      sender: 'Support',
      content: 'Votre demande a été traitée.',
      time: 'Hier'),
  MockMessage(
      id: '3',
      sender: 'Mentor',
      content: 'N\'oubliez pas de réviser le chapitre 2.',
      time: 'Lundi'),
];

final MockUser mockUser = MockUser(
  id: '1',
  name: 'Jonathan Smith',
  avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
  email: 'jonathan.smith@email.com',
);
