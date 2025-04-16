import 'package:flutter/material.dart';

void main() {
  runApp(TeamLibraryApp());
}

class TeamLibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Library',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TeamLibraryScreen(),
    );
  }
}

class TeamLibraryScreen extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: 'Ahmed hamoda',
      role: 'Project Manager',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    TeamMember(
      name: 'Sara hamoda,
      role: 'UI/UX Designer',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    TeamMember(
      name: 'karim hamoda',
      role: 'Flutter',
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
              title: Text(member.name),
              subtitle: Text(member.role),
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
}