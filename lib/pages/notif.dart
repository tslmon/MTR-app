import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'date': '2023.09.10',
      'notifications': [
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': true
        },
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': true
        },
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': false
        },
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': true
        },
      ]
    },
    {
      'date': '2023.09.01',
      'notifications': [
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': true
        },
      ]
    },
    {
      'date': '2023.08.23',
      'notifications': [
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': false
        },
        {
          'title': 'Амжилттай',
          'content': 'Мэдэгдлийн агуулга',
          'time': '08:39',
          'read': true
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мэдэгдэл'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notificationGroup = notifications[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  notificationGroup['date'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ...notificationGroup['notifications'].map<Widget>((notification) {
                return NotificationTile(
                  title: notification['title'],
                  content: notification['content'],
                  time: notification['time'],
                  read: notification['read'],
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String content;
  final String time;
  final bool read;

  const NotificationTile({
    required this.title,
    required this.content,
    required this.time,
    required this.read,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: read ? Colors.white : Colors.blue[50],
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(
            Icons.notifications,
            color: read ? Colors.grey : Colors.blue,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  content,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
