import 'package:doc_scheduler_app/widgets/card_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        /* App bar height */
        preferredSize: const Size.fromHeight(70), // Adjust the preferred height as needed

        /* App bar container */
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 2, // Blur radius
                offset: const Offset(0, 2), // Offset of the shadow
              ),
            ],
          ),
          child: AppBar(

            /* Status bar color setting */
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
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
              onPressed: () {
              },
            ),
          ),
        )
      ),

      /* Body image */
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/heart-shape-stethoscope-medical-subjects.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center
          ),
        ),

        /* Card view */
        child: const CardExample(),
      )
    );
  }
}

