import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 198, width: 170),
            text1(),
          ],
        ),
      ),
    );
  }

  Widget text1() {
    return Column(
       children: [
        const Text(
          "Powered by Oyelabs",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const Text(
          "WITH LOVE 💙",
          style: TextStyle(fontSize: 12, color: Colors.blueAccent),
        ),
      ],
    );
  }
}
