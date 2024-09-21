import 'package:flutter/material.dart';
import 'PlayersComponent.dart'; // The Players list component

class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хайлт'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        // SizedBox(height: 20),
        // // Categories List
        // Expanded(
        //   child: ListView(
        //     children: [
        //       _buildCategoryCard(
        //         context,
        //         title: 'Тоглолт',
        //         subtitle: 'Нийт 23',
        //         icon: Icons.sports_tennis,
        //         color: Colors.lightBlueAccent,
        //       ),
        //       _buildCategoryCard(
        //         context,
        //         title: 'Тоглогчид',
        //         subtitle: 'Бүртгэлтэй 168',
        //         icon: Icons.sports_tennis,
        //         color: Colors.purpleAccent,
        //       ),
        //       _buildCategoryCard(
        //         context,
        //         title: 'Талбай',
        //         subtitle: 'Нийт 3',
        //         icon: Icons.sports_tennis,
        //         color: Colors.lightGreen,
        //       ),
        //       _buildCategoryCard(
        //         context,
        //         title: 'Тэмцээн',
        //         subtitle: 'Нийт 3',
        //         icon: Icons.emoji_events,
        //         color: Colors.yellowAccent,
        //       ),
        //     ],
        //   ),
        // ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlayersComponent()),
            );
          },
          child: Text('Тоглогчид руу очих'),
        ),
      ),
    );
  }

  // Widget _buildCategoryCard(
  //   BuildContext context, {
  //   required String title,
  //   required String subtitle,
  //   required IconData icon,
  //   required Color color,
  // }) {
  //   return Container(
  //     margin: const EdgeInsets.only(bottom: 16.0),
  //     decoration: BoxDecoration(
  //       color: color,
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: ListTile(
  //       contentPadding: EdgeInsets.all(16.0),
  //       leading: Icon(
  //         icon,
  //         color: Colors.white,
  //         size: 40,
  //       ),
  //       title: Text(
  //         title,
  //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  //       ),
  //       subtitle: Text(
  //         subtitle,
  //         style: TextStyle(color: Colors.white70),
  //       ),
  //       trailing: Icon(
  //         Icons.arrow_forward,
  //         color: Colors.white,
  //       ),
  //       onTap: () {
  //         // Handle on tap event for each category
  //       },
  //     ),
  //   );
}
