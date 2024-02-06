import 'package:doc_scheduler_app/widgets/drawer_title_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), // Adjust the preferred height as needed
        child: AppBar(
          backgroundColor: Colors.white,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.local_hospital_outlined,
                size: 35,
                color: Colors.black,
              ),
              SizedBox(width: 5), // Add some space between icon and text
              Text(
                'DocSchedule',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20, // Adjust the font size as needed
                  color: Colors.black,
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu), // Hamburger icon
            onPressed: () {
              // Add your menu functionality here
            },
          ),
        ),
      ),
      body: const Center(
        child: Text('Your Content Here'),
      ),
    );
  }
}

