import 'package:flutter/material.dart';

void main() {
  runApp(TeamLibraryApp());
}

class TeamLibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Library',
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Color(0xFFF0F4F8),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal[800],
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
      ),
      home: TeamLibraryScreen(),
    );
  }
}

class TeamLibraryScreen extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: 'Ahmed Ali',
      role: 'Project Manager',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    TeamMember(
      name: 'Sara Ibrahim',
      role: 'UI/UX Designer',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    TeamMember(
      name: 'Mohamed Gamal',
      role: 'Flutter Developer',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Team Library')),
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (context, index) {
          final member = teamMembers[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(member.imageUrl),
              ),
              title: Text(member.name, style: Theme.of(context).textTheme.titleLarge),
              subtitle: Text(member.role, style: Theme.of(context).textTheme.bodyMedium),
            ),
          );
        },
      ),
    );
  }
}

class TeamMember {
  final String name;
  final String role;
  final String imageUrl;

  TeamMember({
    required this.name,
    required this.role,
    required this.imageUrl,
  });