import 'package:flutter/material.dart';
import 'package:tugas2/view/register_page.dart';

class Profil extends StatelessWidget {
  final String name1;
  final String nim1;
  final String photoUrl1;

  const Profil({
    Key? key,
    required this.name1,
    required this.nim1,
    required this.photoUrl1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://1.bp.blogspot.com/-EZHGhDzkUFY/X5bZdhQ1e7I/AAAAAAAAEIs/o0QnOT08UXY0M6s7T_-u18BqaQhw6Y9jgCLcBGAsYHQ/s1280/IMG-20200410-WA0056.jpg"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name1,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim1,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}