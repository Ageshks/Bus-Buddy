import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import the splash screen;
import 'login_page.dart';

void main() {
  runApp(const BusBuddyApp());
}

class BusBuddyApp extends StatelessWidget {
  const BusBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BusBuddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenWithDelay(), // Start with the splash screen
    );
  }
}

class SplashScreenWithDelay extends StatefulWidget {
  const SplashScreenWithDelay({super.key});

  @override
  _SplashScreenWithDelayState createState() => _SplashScreenWithDelayState();
}

class _SplashScreenWithDelayState extends State<SplashScreenWithDelay> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
