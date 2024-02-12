import 'package:doc_scheduler_app/widgets/card_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            /* App bar height */
            preferredSize: const Size.fromHeight(
                70), // Adjust the preferred height as needed

            /* App bar container */
            child: Container(
              decoration: const BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.2), // Shadow color
                //     spreadRadius: 1, // Spread radius
                //     blurRadius: 2, // Blur radius
                //     offset: const Offset(0, 2), // Offset of the shadow
                //   ),
                // ],
              ),
              child: AppBar(
                /* Status bar color setting */
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness:
                      Brightness.dark, // For Android (dark icons)
                  statusBarBrightness: Brightness.light, // For iOS (dark icons)
                ),

                /* App bar color setting */
                backgroundColor: Colors.white,
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: true,

                  /* App logo */
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_hospital_outlined,
                        size: 35,
                        color: Colors.black,
                      ),
                      SizedBox(width: 1),
                      Text(
                        'DocSchedule',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                /* Hamburger icon */
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  iconSize: 30.0,
                  padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
                  onPressed: () {},
                ),
              ),
            )),

        /* Body image */
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.blue.shade300,
                Colors.blue.shade900
              ], // Replace with your desired colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          /* Card view */
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Welcome, ${widget.username}',
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const CardExample()
              ]),
        ));
  }
}
