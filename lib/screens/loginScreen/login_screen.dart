import 'package:flutter/material.dart';
import 'package:home_service_app/widgets/custom_button.dart';
import 'package:home_service_app/widgets/custom_phone_input_field.dart';

class LoginOldUsersScreen extends StatelessWidget {
  const LoginOldUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
           CustomButton(text: 'CONTINUE WITH FACEBOOK ', iconPath: 'assets/images/facebook.png',height: 63, backgroundColor: Color(0xff7583CA), onPressed: (){}),

            const SizedBox(height: 10),
            CustomButton(text: 'CONTINUE WITH GOOGLE', iconPath: 'assets/images/google.png',height: 63,textColor: Colors.black, backgroundColor: Colors.white, onPressed: (){}),
            const SizedBox(height: 20),
            const Text("OR CONTINUE WITH PHONE NUMBER"),
            const SizedBox(height: 10),
            CustomPhoneField(),
            const SizedBox(height: 20),
           CustomButton(text: 'LOG IN', height: 63, backgroundColor: Colors.black, onPressed: (){}),
          ],
        ),
      ),
    );
  }
}