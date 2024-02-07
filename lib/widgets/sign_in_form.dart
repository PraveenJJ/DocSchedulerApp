import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home_page.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  final TextEditingController _usernameController = TextEditingController(text: 'user1');
  final TextEditingController _passwordController = TextEditingController(text: 'user1');

  Future<void> _submitForm() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Load JSON file
    String jsonContent = await rootBundle.loadString('assets/users/users.json');
    List<dynamic> users = json.decode(jsonContent);

    // Check if username and password match
    bool isAuthenticated = false;
    for (var user in users) {
      if (user['username'] == username && user['password'] == password) {
        isAuthenticated = true;
        break;
      }
    }

    if (isAuthenticated) {
      // Navigate to home screen page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Show error message
      showErrorMessage(context);
    }
  }

  void showErrorMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Oops...'),
          content: const Text('Invalid username or password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 310,
            padding: const EdgeInsets.fromLTRB(28.0, 0.0, 0.0, 20.0),
            child: const Text(
              'Login to book your appointment!',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
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
          ),
          // username container
          Container(
            width: 300,
            height: 50,
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          // password container
          Container(
            width: 300,
            height: 50,
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
