import 'package:flutter/material.dart';

class CompetitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тэмцээн'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _eventCard(
              title: 'Сонирхогчдын тэмцээн',
              date: '10 сарын 6',
              time: '14:00',
              location: 'ХУД, Ривер гарден баруун талд Хан Хиллс хотхон дотор',
              categories: '3-р түвшин • 16-71 нас • 50,000₮ • Man singles',
              status: 'Бүртгэл эхэлсэн',
            ),
            const SizedBox(height: 16),
            _eventCard(
              title: 'Мэргэжлийн тэмцээн',
              date: '10 сарын 8',
              time: '16:00',
              location: 'ХУД, Ривер гарден баруун талд Хан Хиллс хотхон дотор',
              categories: '2-р түвшин • 18-60 нас • 80,000₮ • Mixed doubles',
              status: 'Бүртгэл явагдаж байна',
            ),
            const SizedBox(height: 16),
            // Add more event cards here...
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set the selected index for "Тоглолт"
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Нүүр',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Тоглолт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_tennis),
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
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }

  Widget _eventCard({
    required String title,
    required String date,
    required String time,
    required String location,
    required String categories,
    required String status,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Chip(
                  label: Text(
                    status,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                const Spacer(),
                Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16),
                const SizedBox(width: 4),
                Text(date),
                const SizedBox(width: 16),
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 4),
                Text(time),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(location),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              categories,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
