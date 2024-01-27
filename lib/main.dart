import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Container(
          child: const Column(
            children: [
              // for logo and welcome
              WelcomeLogoWidget(),
              // for sign-in form
              SignInForm(),
            ],
          ),
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

    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> _submitForm() async {
    String username = _usernameController.text;
    String password = _passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 320,
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
          const SizedBox(height: 20.0),
          Container(
            width: 320,
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
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _submitForm,
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
            ),
            child: const Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
