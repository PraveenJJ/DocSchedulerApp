import 'dart:convert';

import 'package:doc_scheduler_app/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign In Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    // Here you can implement your logic for submitting the form
    print('Username: $username');
    print('Password: $password');
    // For demonstration, just printing the username and password
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        backgroundColor: Colors.amber,
        body: Center(
          child: Container(
              width: 350,
              height: 520,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // for logo and welcome
                  WelcomeLogoWidget(),
                  // for sign-in form
                  SignInForm(),
                ],
              ),
            )
        ));
  }
}

class WelcomeLogoWidget extends StatefulWidget {
  const WelcomeLogoWidget({super.key});
  @override
  State<StatefulWidget> createState() => WelcomeLogoWidgetState();
}

class WelcomeLogoWidgetState extends State<WelcomeLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        children: [
          const Icon(
            Icons.local_hospital_outlined,
            size: 150,
          ),
          const SizedBox(height: 10),
          const Text(
            'Doctor\'s Appointment',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: const Text(
              'Sign-in to schedule your first doctor\'s appointment!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _submitForm() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Load JSON file
    String jsonContent = await rootBundle.loadString('users/users.json');
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
          // username container
          Container(
            width: 310,
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
          const SizedBox(height: 5.0),
          // password container
          Container(
            width: 310,
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
            width: 310,
            height: 50,
            child: ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
