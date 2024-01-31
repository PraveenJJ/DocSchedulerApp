import 'package:doc_scheduler_app/widgets/sign_in_form.dart';
import 'package:doc_scheduler_app/widgets/welcome_logo_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        backgroundColor: Colors.tealAccent,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/heart-shape-stethoscope-medical-subjects.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center
              ),
            ),
            child: Center(
                child: Container(
              width: 340,
              height: 420,
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
            ))));
  }
}
