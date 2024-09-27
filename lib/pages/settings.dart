import 'package:flutter/material.dart';
import 'package:mtr/pages/info.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тохиргоо'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // Navigate back when the back icon is tapped
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Option 1: My Information
          ListTile(
            title: Text('Миний мэдээлэл'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfile()),
              );
            },
          ),
          Divider(),
          // Option 2: Change Password
          ListTile(
            title: Text('Нууц үг солих'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to "Change Password" page
            },
          ),
          Divider(),
          // Option 3: MTR Level Breakdown
          ListTile(
            title: Text('MTR түвшингийн задаргаа'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to "MTR Level Breakdown" page
            },
          ),
          Divider(),
          // Option 4: Terms and Conditions
          ListTile(
            title: Text('Үйлчилгээний нөхцөл'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to "Terms and Conditions" page
            },
          ),
          Divider(),
          // Option 5: Privacy Policy
          ListTile(
            title: Text('Нууцлалын бодлого'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to "Privacy Policy" page
            },
          ),
          Divider(),
          // Biometric Toggle
          SwitchListTile(
            title: Text('Биометрикээр нэвтрэх'),
            subtitle: Text('FaceID, Fingerprint'),
            value: false, // Initial value of the switch
            onChanged: (bool newValue) {
              // Handle toggle change
            },
          ),
          SizedBox(height: 16),
          // Logout Button
          TextButton.icon(
            onPressed: () {
              // Handle logout action
            },
            icon: Icon(Icons.logout, color: Colors.red),
            label: Text(
              'Гарах',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
