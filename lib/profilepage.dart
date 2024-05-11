import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
             Text(
              'Nama: Raihan Fajari',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 8.0),
             Text(
              'Mata Kuliah: Mobile Programming',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),

    );
  }
}