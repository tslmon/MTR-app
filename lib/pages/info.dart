import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Миний мэдээлэл'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Овог'),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'FirstName',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Нэр'),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'LastName',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Төрсөн өдөр'),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: '2024-08-01',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              onTap: () {},
            ),
            const SizedBox(height: 16),
            const Text('Хүйс'),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              onChanged: (newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 'male',
                  child: Text('Эрэгтэй'),
                ),
                DropdownMenuItem(
                  value: 'female',
                  child: Text('Эмэгтэй'),
                ),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Утасны дугаар'),
            const SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: '99009900',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Цахим шуудан'),
            const SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Цахим шуудан оруулах',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.edit),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Хадгалах'),
            ),
          ],
        ),
      ),
    );
  }
}
