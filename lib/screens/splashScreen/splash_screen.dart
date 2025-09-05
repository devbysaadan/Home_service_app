import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_service_app/screens/loginScreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginOldUsersScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              const Spacer(),

              Image.asset("assets/images/logo.png", height: 198, width: 170),

              const Spacer(),

              text1(),
            ],
          ),
        ),
      ),
    );
  }

  Widget text1() {
    return const Column(
      children: [
        Text(
          "Powered by Oyelabs",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          "WITH LOVE 💙",
          style: TextStyle(
            fontSize: 12,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
