import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:project_rhema/constants/buttons.dart';
import 'package:project_rhema/model/firebase_authentication.dart';
import 'package:project_rhema/screens/categories_screen.dart';
import 'package:project_rhema/screens/signup_screen.dart';

import '../constants/text_fields.dart';

class LoginPage extends StatefulWidget {
  static const String id = "Login page route";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool obscureText = true;
  bool resetError = false;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: Image.asset("assets/images/login_logo.png"),
                ),
              ),
              TextFormField(
                controller: _emailTextController,
                decoration: authScreenFormDeco,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 10.0,
                  dashLength: 10.0,
                  dashColor: Colors.amberAccent,
                  dashRadius: 5.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 5.0,
                ),
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: authScreenFormDeco.copyWith(
                    label: const Text("Password"), hintText: "******"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 10.0,
                  dashLength: 10.0,
                  dashColor: Colors.amberAccent,
                  dashRadius: 5.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 5.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Forgot Password?"),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: AuthElevatedButton(
                    title: "Login",
                    onPressed: () async {
                      print(_passwordTextController.text);
                      print(_emailTextController.text);
                      //Using a try - catch block to handle possible errors that may arise
                      try {
                        //Check to see if typed credentials are valid types before performing login
                        if (_emailTextController.value.text.isNotEmpty &&
                            _emailTextController.text.contains("@") &&
                            _passwordTextController.text.isNotEmpty) {
                          await FirebaseAuthentication(
                            email: _emailTextController.text.trim(),
                            password: _passwordTextController.text.trim(),
                          ).signInUser().then(
                                (value) => Navigator.popAndPushNamed(
                                    context, CategoriesScreen.id),
                              );
                        }
                      } catch (errorIdentifier) {
                        setState(() {
                          print(errorIdentifier);
                          _passwordTextController.clear();
                        });
                      }
                    }),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, SIgnUpPage.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("You don't have an account?"),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
