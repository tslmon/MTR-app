// import 'package:flutter/material.dart';

// class VenuePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Талбай'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Go back to the previous screen
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Search Bar
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Хайх',
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide.none,
//                       ),
//                       fillColor: Colors.grey[200],
//                       filled: true,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 // Filter Button
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: Icon(Icons.filter_list, color: Colors.white),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             // Venue List Header
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   'Нийт: 3', // Total count of venues
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             // Venue List
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 3, // Replace with the actual number of venues
//                 itemBuilder: (context, index) {
//                   return _buildVenueCard();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildVenueCard() {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(16.0),
//         leading: Icon(
//           Icons.location_on, // Using built-in location icon
//           color: Colors.lightGreen, // You can customize the color
//           size: 40, // Customize the size
//         ),
//         title: Text(
//           'Газрын нэр', // Replace with venue name
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Row(
//           children: [
//             Icon(Icons.location_on,
//                 size: 16, color: Colors.grey), // Mini location icon
//             SizedBox(width: 4),
//             Expanded(
//               child: Text(
//                 'ХУД, Ривер гарденын баруун талд Хан Хиллс хотхон дотор', // Replace with venue location
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ],
//         ),
//         onTap: () {
//           // Navigate to the detail page when a venue is tapped

//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:mtr/pages/area_detail.dart';
import 'area_detail.dart'; // Import your VenueDetailPage

class VenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Талбай'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
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
            // Venue List Header
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Нийт: 3', // Total count of venues
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Venue List
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with the actual number of venues
                itemBuilder: (context, index) {
                  // Example data for each venue
                  final venueName = 'Газрын нэр $index';
                  final description =
                      'This is the description for venue $index.';
                  final location =
                      'ХУД, Ривер гарденын баруун талд Хан Хиллс хотхон дотор';
                  final members = 96 + index;
                  final gamesPlayed = 15 + index;

                  return _buildVenueCard(
                    context,
                    venueName,
                    description,
                    location,
                    members,
                    gamesPlayed,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVenueCard(
    BuildContext context,
    String venueName,
    String description,
    String location,
    int members,
    int gamesPlayed,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(
          Icons.location_on, // Using built-in location icon
          color: Colors.lightGreen, // You can customize the color
          size: 40, // Customize the size
        ),
        title: Text(
          venueName, // Dynamic venue name
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.location_on,
                size: 16, color: Colors.grey), // Mini location icon
            SizedBox(width: 4),
            Expanded(
              child: Text(
                location, // Dynamic venue location
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
        onTap: () {
          // Navigate to the VenueDetailPage when a venue is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VenueDetailPage(
                venueName: venueName,
                description: description,
                location: location,
                members: members,
                gamesPlayed: gamesPlayed,
              ),
            ),
          );
        },
      ),
    );
  }
}
