import 'package:flutter/material.dart';
import 'home.dart';
import 'event.dart'; // Import the new page
import 'competition.dart'; // Import the new page
import 'search.dart'; // Import the new page
import 'SearchComponent.dart';
import 'profile.dart'; // Import the new page

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages for BottomNavigationBar
  List<Widget> _pages = [
    HomeScreen(), // The home screen content
    EventPage(), // Тоглолт page
    CompetitionPage(), // Тэмцээн page
    // SearchComponent(),
    SearchPage(), // Хайлт page
    ProfilePage(), // Профайл page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Нүүр'),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'MTR 2.5',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Нүүр',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_tennis),
            label: 'Тоглолт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Тэмцээн',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Хайлт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профайл',
          ),
        ],
      ),
    );
  }
}
