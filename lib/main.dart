import 'package:flutter/material.dart';
import 'package:home_service_app/screens/splashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Service',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
    );
  }
}

