import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_rhema/screens/categories_screen.dart';
import 'package:project_rhema/screens/foundation_school_screen.dart';
import 'package:project_rhema/screens/login_screen.dart';
import 'package:project_rhema/screens/onboarding_screen.dart';
import 'package:project_rhema/screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const RhemaApp());
}

class RhemaApp extends StatelessWidget {
  const RhemaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingScreen.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        CategoriesScreen.id: (context) => const CategoriesScreen(),
        SIgnUpPage.id: (context) => const SIgnUpPage(),
      },
    );
  }
}
