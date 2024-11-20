import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.coffee,
              color: Colors.white,
            ),
            SizedBox(width: 8), 
            Text(
              'Cafeteria Cup o\' Cat',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF523a34),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}