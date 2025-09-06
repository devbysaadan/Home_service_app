import 'package:flutter/material.dart';
import 'package:home_service_app/screens/OtpScreen/otp.dart';
import 'package:home_service_app/screens/signupScreen/signup.dart';
import 'package:home_service_app/widgets/custom_button.dart';
import 'package:home_service_app/widgets/custom_phone_input_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: CustomButton(
                text: 'CONTINUE WITH FACEBOOK ',
                iconPath: 'assets/images/facebook.png',
                height: 63,
                backgroundColor: Color(0xff7583CA),
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 20),
            CustomButton(
              text: 'CONTINUE WITH GOOGLE',
              iconPath: 'assets/images/google.png',
              height: 63,
              textColor: Colors.black,
              backgroundColor: Colors.white,
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: const Text(
                "OR CONTINUE WITH PHONE NUMBER",
                style: TextStyle(color: Color(0xffA1A4B2), fontSize: 15),
              ),
            ),
            const SizedBox(height: 30),
            CustomPhoneField(),
            const SizedBox(height: 30),
            CustomButton(
              text: 'LOG IN',
              height: 63,
              backgroundColor: Colors.black,
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OTP(),));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('DON’T HAVE AN ACCOUNT?',style: TextStyle(color: Color(0xffA1A4B2),fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup(),));
                  }, child: Text('SIGN UP',style: TextStyle(color: Colors.blue,fontSize: 16),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
