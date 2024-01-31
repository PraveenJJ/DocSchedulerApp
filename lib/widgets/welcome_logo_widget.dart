import 'package:flutter/material.dart';

class WelcomeLogoWidget extends StatefulWidget {
  const WelcomeLogoWidget({super.key});
  @override
  State<StatefulWidget> createState() => WelcomeLogoWidgetState();
}

class WelcomeLogoWidgetState extends State<WelcomeLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Column(
        children: [
          // Logo container
          Container(
            padding: const EdgeInsets.fromLTRB(25.0, 40.0, 0.0, 0.0),
            child: const Row(
              children: [
                Icon(
                  Icons.local_hospital_outlined,
                  size: 100,
                  color: Colors.black,
                  // shadows: [
                  //   Shadow(
                  //     blurRadius: 4.0,
                  //     color: Colors.black,
                  //     offset: Offset(1.0, 1.0),
                  //   ),
                  // ],
                ),
                SizedBox(height: 10),
                Text(
                  'DocSchedule',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                    // shadows: [
                    //   Shadow(
                    //     blurRadius: 4.0,
                    //     color: Colors.black,
                    //     offset: Offset(1.0, 1.0),
                    //   ),
                    // ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
