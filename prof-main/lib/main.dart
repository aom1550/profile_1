import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Profile Picture
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile_picture.png.jpg'), // Path to your local image
            ),
            const SizedBox(height: 24),
            // Name
            const Text(
              'วัณณุวรรธน์ ศรีวงศ์แผน',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Additional Info
            const Text(
              '6512732108',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 151, 234, 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
