class MockMessage {
  final String sender;
  final String content;
  final String time;

  MockMessage({
    required this.sender,
    required this.content,
    required this.time,
  });
}

class MockCourse {
  final String title;
  final String category;
  final String description;
  final String price;
  final String imageUrl;

  MockCourse({
    required this.title,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class MockUser {
  final String name;
  final String email;
  final String avatarUrl;

  MockUser({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });
}

final List<MockMessage> mockMessages = [
  MockMessage(
    sender: 'Conseiller',
    content: 'Bonjour ! Comment puis-je vous aider aujourd\'hui ?',
    time: '10:30',
  ),
  MockMessage(
    sender: 'Vous',
    content: 'Je voudrais des informations sur les métiers du numérique.',
    time: '10:32',
  ),
  MockMessage(
    sender: 'Conseiller',
    content:
        'Bien sûr ! Je peux vous orienter vers plusieurs formations dans ce domaine.',
    time: '10:35',
  ),
];

final List<MockCourse> mockCourses = [
  MockCourse(
    title: 'Développement Web',
    category: 'Informatique',
    description:
        'Apprenez les bases du développement web avec HTML, CSS et JavaScript.',
    price: 'Gratuit',
    imageUrl: 'https://picsum.photos/200',
  ),
  MockCourse(
    title: 'Marketing Digital',
    category: 'Marketing',
    description:
        'Découvrez les fondamentaux du marketing digital et des réseaux sociaux.',
    price: '49€',
    imageUrl: 'https://picsum.photos/201',
  ),
  MockCourse(
    title: 'Design UI/UX',
    category: 'Design',
    description: 'Maîtrisez les principes du design d\'interface utilisateur.',
    price: '79€',
    imageUrl: 'https://picsum.photos/202',
  ),
];

final MockUser mockUser = MockUser(
  name: 'John Doe',
  email: 'john.doe@example.com',
  avatarUrl: 'https://picsum.photos/200',
);
