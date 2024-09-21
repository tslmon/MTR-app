import 'package:flutter/material.dart';

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
            onPressed: () {},
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
                    icon: Icons.sports_tennis,
                    color: Colors.lightBlueAccent,
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Тоглогчид',
                    subtitle: 'Бүртгэлтэй 168',
                    icon: Icons.sports_tennis,
                    color: Colors.purpleAccent,
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Талбай',
                    subtitle: 'Нийт 3',
                    icon: Icons.sports_tennis,
                    color: Colors.lightGreen,
                  ),
                  _buildCategoryCard(
                    context,
                    title: 'Тэмцээн',
                    subtitle: 'Нийт 3',
                    icon: Icons.emoji_events,
                    color: Colors.yellowAccent,
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
    required IconData icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white70),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onTap: () {
          // Handle on tap event for each category
        },
      ),
    );
  }
}
