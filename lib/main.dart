import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// The data object
class User {
  final String name;
  final String email;
  final String phone;

  const User({
    required this.name,
    required this.email,
    required this.phone,
  });
}

// The app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const user = User(
      name: 'Kadiri Great',
      email: 'greatkadiri79@gmail.com',
      phone: '08071578449',
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserPage(user: user),
    );
  }
}

// The screen
class UserPage extends StatelessWidget {
  final User user;

  const UserPage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: UserCard(user: user),
        ),
      ),
    );
  }
}

// The reusable responsive card component
class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text('Email: ${user.email}'),
              const SizedBox(height: 4),
              Text('Phone: ${user.phone}'),
            ],
          ),
        ),
      ),
    );
  }
}