import 'package:flutter/material.dart';
import 'package:home_service_app/screens/homeScreen/home.dart';
import 'package:home_service_app/widgets/custom_button.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hey, nice to meet you!",
                style: TextStyle(fontSize: 20, color: Color(0xff8E8E8E)),
              ),
              const SizedBox(height: 10),
               Text("See services around", style: TextStyle(fontSize: 36,fontWeight: FontWeight.w500,)),
              const SizedBox(height: 40),
              Image.asset("assets/images/location.png", height: 150),
              const SizedBox(height: 40),
          CustomButton(iconPath:'assets/images/navigation.png',text: 'Your current location', height: 53, backgroundColor: Colors.black, onPressed: (){}),
              const SizedBox(height: 20),
             CustomButton(iconPath:'assets/images/search.png',text: 'Some other location', height: 53, backgroundColor: Colors.white,textColor: Colors.black, onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const Home(),));
             }),
            ],
          ),
        ),
      ),
    );
  }
}