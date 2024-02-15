import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {



  const HomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            height: 130,
            width: 330,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text('Dr. Praveen Jaishankar'),
                    subtitle: Text('Specialist in Psychology'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Book Now'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Show Treatments'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            height: 130,
            width: 330,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text('Dr. Swathi Vadivelu'),
                    subtitle: Text('Specialist in Pediatrician'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Book Now'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Show Treatments'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}