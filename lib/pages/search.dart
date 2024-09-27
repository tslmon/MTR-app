import 'package:flutter/material.dart';
import 'package:mtr/pages/area.dart';
import 'package:mtr/pages/competition.dart';
import 'package:mtr/pages/event.dart';
import 'package:mtr/pages/notif.dart';
import 'PlayersComponent.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хайлт'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Хайх',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                // Filter Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Icon(Icons.filter_list, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Categories List
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryCard(
                    context,
                    title: 'Тоглолт',
                    subtitle: 'Нийт 23',
                    imagePath: 'lib/assets/event.png',
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Тоглогчид',
                    subtitle: 'Бүртгэлтэй 168',
                    imagePath: 'lib/assets/players.png',
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Талбай',
                    subtitle: 'Нийт 3',
                    imagePath: 'lib/assets/venue.png',
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Тэмцээн',
                    subtitle: 'Нийт 3',
                    imagePath: 'lib/assets/comp.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return InkWell(
      onTap: () {
        if (title == 'Тоглогчид') {
          // Navigate to the PlayersComponent when "Тоглогчид" is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlayersComponent()),
          );
        } else if (title == 'Тоглолт') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EventPage()),
          );
        } else if (title == 'Тэмцээн') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompetitionPage()),
          );
        } else if (title == 'Талбай') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VenuePage()),
          );
        }
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(imagePath), // Load the image from assets
            fit: BoxFit.cover, // Make sure the image covers the container
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color on top of image
                ),
              ),
              SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Text color on top of image
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
