import 'package:doc_scheduler_app/widgets/doctor_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomeCards extends StatefulWidget {
  const HomeCards({super.key});

  @override
  HomeCardsState createState() => HomeCardsState();
}

class HomeCardsState extends State<HomeCards> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the page initializes
  }

  Future<void> fetchData() async {
    // Load JSON file
    String jsonContent =
        await rootBundle.loadString('assets/resources/doctors.json');
    List<dynamic> doctors = json.decode(jsonContent);

    setState(() {
      data = doctors; // Update the data variable with fetched data
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: data.map<Widget>((doctor) {
          return DoctorCards(
              title: doctor['doctorName'] as String,
              subtitle: doctor['speciality'] as String);
        }).toList(),
      ),
    );
  }
}
