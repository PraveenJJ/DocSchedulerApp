import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logo AppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu), // Hamburger icon
          onPressed: () {
            // Add your menu functionality here
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your logo here
            Expanded(
                  child: Container(
                    width: 100, // Adjust the width as needed
                    height: 50, // Adjust the height as needed
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.local_hospital_outlined,
                          size: 35,
                          color: Colors.black,
                        ),
                        Text(
                          'DocSchedule',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
        actions: <Widget>[
          // Add any additional actions here
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Your Content Here'),
      ),
    );
  }
}
