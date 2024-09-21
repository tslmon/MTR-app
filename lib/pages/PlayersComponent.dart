import 'package:flutter/material.dart';

class PlayersComponent extends StatelessWidget {
  final List<Map<String, dynamic>> players = List.generate(
      10,
      (index) => {
            'name': 'Нэр Овог',
            'mtr': 'MTR 1.5',
            'gender': 'Эрэгтэй'
          }); // Example list of players

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тоглогчид'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Нийт: ${players.length}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                IconButton(
                  icon: Icon(Icons.filter_alt, color: Colors.blue),
                  onPressed: () {
                    // Implement filter functionality if needed
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[100],
                        child: Icon(Icons.person, color: Colors.blue),
                      ),
                      title: Text(players[index]['name']),
                      subtitle: Text(
                          '${players[index]['mtr']} - ${players[index]['gender']}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class PlayersComponent extends StatefulWidget {
//   @override
//   _PlayersComponentState createState() => _PlayersComponentState();
// }

// class _PlayersComponentState extends State<PlayersComponent> {
//   Future<List<Map<String, dynamic>>> fetchPlayers() async {
//     final response = await http.get(Uri.parse('https://api.yourdomain.com/players')); // Replace with your API URL
//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body);
//       return data.map((item) => {
//         'name': item['name'],
//         'mtr': item['mtr'],
//         'gender': item['gender']
//       }).toList();
//     } else {
//       throw Exception('Failed to load players');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Тоглогчид'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: fetchPlayers(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No players found'));
//           } else {
//             final players = snapshot.data!;
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Нийт: ${players.length}',
//                         style: TextStyle(fontSize: 16, color: Colors.grey),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.filter_alt, color: Colors.blue),
//                         onPressed: () {
//                           // Implement filter functionality if needed
//                         },
//                       ),
//                     ],
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: players.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           margin: EdgeInsets.symmetric(vertical: 8.0),
//                           child: ListTile(
//                             leading: CircleAvatar(
//                               backgroundColor: Colors.blue[100],
//                               child: Icon(Icons.person, color: Colors.blue),
//                             ),
//                             title: Text(players[index]['name']),
//                             subtitle: Text('${players[index]['mtr']} - ${players[index]['gender']}'),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
