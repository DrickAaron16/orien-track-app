import 'package:flutter/material.dart';
import 'educational_resources_screen.dart';
import 'messages_screen.dart';
import 'profile_screen.dart';
import 'career_opportunities_screen.dart';
import 'statistics_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeContent(),
    CareerOpportunitiesScreen(),
    EducationalResourcesScreen(),
    StatisticsScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF6C63FF),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Carrières'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'Ressources'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Statistiques'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Barre supérieure
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/1.jpg'),
                radius: 24,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Bonjour ! 👋',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                  Text('Jonathan Smith',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_none)),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ],
          ),
          const SizedBox(height: 24),
          // Barre de recherche
          TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Carte de suggestion
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF3E0),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [
                Image.network(
                  'https://img.freepik.com/free-vector/online-tutorials-concept_52683-37480.jpg',
                  height: 54,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Tu ne sais pas par où commencer ?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      Text('Choisis un parcours d\'apprentissage',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.orange),
              ],
            ),
          ),
          const SizedBox(height: 28),
          // Catégories
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Catégories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Voir tout', style: TextStyle(color: Colors.blue)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CategoryIcon(
                  label: 'IT', icon: Icons.cloud, color: Colors.purple),
              _CategoryIcon(
                  label: 'UX', icon: Icons.layers, color: Colors.blue),
              _CategoryIcon(
                  label: 'Graphisme', icon: Icons.brush, color: Colors.orange),
              _CategoryIcon(
                  label: 'Marketing', icon: Icons.campaign, color: Colors.pink),
            ],
          ),
          const SizedBox(height: 28),
          // Most Popular
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Populaires',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Voir tout', style: TextStyle(color: Colors.blue)),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _CourseCard(
                    title: 'UI Design',
                    price: '19.99€',
                    imageUrl:
                        'https://images.unsplash.com/photo-1506744038136-46273834b3fb'),
                _CourseCard(
                    title: 'Business',
                    price: '24.99€',
                    imageUrl:
                        'https://images.unsplash.com/photo-1515168833906-d2a3b82b3029'),
                _CourseCard(
                    title: 'Marketing',
                    price: '14.99€',
                    imageUrl:
                        'https://images.unsplash.com/photo-1461749280684-dccba630e2f6'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  const _CategoryIcon(
      {required this.label, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class _CourseCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  const _CourseCard(
      {required this.title, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: Image.network(imageUrl,
                height: 90, width: 140, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text(price, style: const TextStyle(color: Colors.orange)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
