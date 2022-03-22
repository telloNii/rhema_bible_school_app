import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:project_rhema/constants/buttons.dart';
import 'package:project_rhema/model/firebase_authentication.dart';
import 'package:project_rhema/screens/categories_screen.dart';
import 'package:project_rhema/screens/login_screen.dart';

import '../constants/text_fields.dart';

class SIgnUpPage extends StatefulWidget {
  static const String id = "signup page route";
  const SIgnUpPage({Key? key}) : super(key: key);

  @override
  State<SIgnUpPage> createState() => _SIgnUpPageState();
}

class _SIgnUpPageState extends State<SIgnUpPage> {
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
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: AuthElevatedButton(
                    title: "Signup",
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
                          ).signUpUSer().then(
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
                  Navigator.popAndPushNamed(context, LoginPage.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account?"),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Login",
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
