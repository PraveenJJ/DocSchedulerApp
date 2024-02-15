import 'package:flutter/material.dart';

class DoctorCards extends StatelessWidget {

  final String title;
  final String subtitle;

  const DoctorCards({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

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
                  ListTile(
                    leading: const Icon(Icons.local_hospital),
                    title: Text(title),
                    subtitle: Text(subtitle),
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
        ],
      )
    );
  }

}