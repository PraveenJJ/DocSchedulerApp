import 'package:flutter/material.dart';

class HomePageFirstHalfWidget extends StatefulWidget {
  const HomePageFirstHalfWidget({super.key});
  @override
  State<HomePageFirstHalfWidget> createState() => HomePageFirstHalfWidgetState();
}

class HomePageFirstHalfWidgetState extends State<HomePageFirstHalfWidget> {
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
      ),
    );
  }
}
