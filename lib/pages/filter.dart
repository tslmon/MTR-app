import 'package:flutter/material.dart';

class FilterModal extends StatefulWidget {
  @override
  _FilterModalState createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  // Example states for filter options
  String selectedStatus = 'Удахгүй болох'; // Default selected status
  String selectedGender = 'Эр'; // Default selected gender
  RangeValues priceRange = RangeValues(5000, 200000); // Default price range

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.8, // Adjust size
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Close button
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context); // Close the modal
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  // Status filter section
                  Text('Хугацаа',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Wrap(
                    spacing: 8.0,
                    children: ['Удахгүй болох', 'Явагдаж буй', 'Болж өнгөрсөн']
                        .map((status) {
                      return ChoiceChip(
                        label: Text(status),
                        selected: selectedStatus == status,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedStatus = status;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16),
                  // Type filter section
                  Text('Төрөл',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Wrap(
                    spacing: 8.0,
                    children: [
                      'Man singles',
                      'Woman singles',
                      'Man doubles',
                      'Woman doubles',
                      'Mixed doubles'
                    ].map((type) {
                      return FilterChip(
                        label: Text(type),
                        selected: false, // Change logic for selected if needed
                        onSelected: (bool selected) {
                          // Handle type filter selection
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16),
                  // Gender filter section
                  Text('Хүйс',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Wrap(
                    spacing: 8.0,
                    children: ['Эр', 'Эм'].map((gender) {
                      return ChoiceChip(
                        label: Text(gender),
                        selected: selectedGender == gender,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedGender = gender;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16),
                  // Price Range filter section
                  Text('Хураамж',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  RangeSlider(
                    values: priceRange,
                    min: 5000,
                    max: 200000,
                    divisions: 20,
                    labels: RangeLabels(
                      priceRange.start.round().toString(),
                      priceRange.end.round().toString(),
                    ),
                    onChanged: (RangeValues newRange) {
                      setState(() {
                        priceRange = newRange;
                      });
                    },
                  ),
                  SizedBox(height: 24),
                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Clear filter logic
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300],
                          ),
                          child: Text('Цэвэрлэх'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Apply filter logic
                            Navigator.pop(context); // Close the modal
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Хайх',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
