import 'package:flutter/material.dart';
import 'package:onboarding_ui/views/homepage.dart';
import 'package:onboarding_ui/views/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        // Routes for the onboarding and homepages
        "/":(context) => OnboardingScreen(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
