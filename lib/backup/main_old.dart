import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }


}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.local_hospital_outlined,
                size: 150,
              ),
              const SizedBox(height: 10),
              const Text('Doctor\'s Appointment',
              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
              const SizedBox(height: 20),
              const Text('Welcome!',
                style: TextStyle(
                    fontSize: 24
                ),),
              const SizedBox(height: 30),

              //UserName
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username"
                        ),
                      ),
                    ),
                  ),
              ),
              const SizedBox(height: 10),

              //Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //sign in
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                 /* decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),*/
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {

                    },
                      style: ElevatedButton.styleFrom(
                        primary:Colors.deepPurple,
                      ),
                      child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    )
                ),
              ),
              const SizedBox(height: 20),

              //Registration
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'First Time?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,)
                  ),
                  Text(
                      'Register Here',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }

  
}