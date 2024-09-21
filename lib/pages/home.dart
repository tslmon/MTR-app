import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages for BottomNavigationBar
  List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Тоглолт')),
    Center(child: Text('Тэмцээн')),
    Center(child: Text('Хайлт')),
    Center(child: Text('Профайл')),
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section 1 - Миний тоглолтууд
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Миний тоглолтууд',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  'Тоглолт олох',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Одоогоор тоглолт байхгүй байна'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Тоглолт үүсгэх'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Section 2 - Удахгүй болох тоглолтууд
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Удахгүй болох тоглолтууд',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _upcomingMatchCard(),
          // Section 3 - Сүүлд тоглосон тоглогчид
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Сүүлд тоглосон тоглогчид',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _previousMatchCard(),
        ],
      ),
    );
  }

  Widget _upcomingMatchCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Text('Бүртгэл эхэлсэн', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 8),
          Text('Сонирхогчдын тэмцээн',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text('10 сарын 6 | 14:00'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text('ХУД, Ривер гарденын баруун талд Хан Хиллс хотхон дотор'),
            ],
          ),
          SizedBox(height: 8),
          Text('3-р түвшин | 16-71 нас | 50,000₮ | Man singles'),
        ],
      ),
    );
  }

  Widget _previousMatchCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('8 сарын 6 | 14:00',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text('Алтангадас спорт заал'),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:mtr/pages/competition.dart';
// import 'package:mtr/pages/event.dart';
// import 'package:mtr/pages/profile.dart';
// import 'package:mtr/pages/search.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   // List of pages for BottomNavigationBar
//   List<Widget> _pages = [
//     HomeScreen(),
//     EventPage(),
//     CompetitionPage(),
//     SearchPage(),
//     ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _selectedIndex == 0
//           ? _buildHomeAppBar()
//           : null, // Show AppBar only on Home page
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Нүүр',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.sports_tennis),
//             label: 'Тоглолт',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.emoji_events),
//             label: 'Тэмцээн',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Хайлт',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Профайл',
//           ),
//         ],
//       ),
//     );
//   }

//   AppBar _buildHomeAppBar() {
//     return AppBar(
//       title: Row(
//         children: [
//           Text('Нүүр'),
//           Spacer(),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             decoration: BoxDecoration(
//               color: Colors.teal,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(
//               'MTR 2.5',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           Spacer(),
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       elevation: 0,
//       backgroundColor: Colors.white,
//       foregroundColor: Colors.black,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Content of the HomeScreen (as shown in your previous implementation)
//         ],
//       ),
//     );
//   }
// }
