import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Menu',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PizzaMenu(),
    );
  }
}

class PizzaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android ATC Pizza Place'),
      ),
      body: ListView(
        children: [
          MenuCard(
            imageUrl: 'images/vegitable pizza.png',
            title: 'Vegetable Pizza',
          ),
          MenuCard(
            imageUrl: 'images/cheese pizza.png',
            title: 'Cheese Pizza',
          ),
          MenuCard(
            imageUrl: 'images/box of fries.png',
            title: 'Box of Fries',
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  MenuCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.orangeAccent,
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Added padding for better layout
        child: Row( // Use Row to align items horizontally
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
              child: Image.asset(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16), // Add some space between image and text
            Expanded( // Use Expanded to allow text to take remaining space
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left, // Align text to the left
              ),
            ),
          ],
        ),
      ),
    );
  }
}