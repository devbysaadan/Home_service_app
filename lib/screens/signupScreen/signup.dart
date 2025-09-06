import 'package:flutter/material.dart';
import 'package:home_service_app/screens/loginScreen/login.dart';
import 'package:home_service_app/widgets/custom_button.dart';
import 'package:home_service_app/widgets/custom_phone_input_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
            children: [
              Image.asset(
                "assets/images/1.png",
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 50,
                width: 332,
                top: 180,
                child: Image.asset(
                  "assets/images/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                width: 430,
                top: 450,
                child: Image.asset(
                  "assets/images/3.png",
                  fit: BoxFit.cover,
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Your Home services Expert",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),

                        Text('Continue with Phone Number',style: TextStyle(fontSize: 15,color: Color(0xffA1A4B2)
                        ),),

                        const SizedBox(height: 20),
                        const CustomPhoneField(),
                        const SizedBox(height: 20),
                        CustomButton(
                          text: 'SIGN UP',
                          height: 63,
                          backgroundColor: Colors.black,
                          onPressed: () {},
                        ),
                        TextButton(onPressed: (){}, child: Text('VIEW OTHER OPTION',style: TextStyle(color: Color(0xff5A77FF),fontSize: 16),)),
                     SizedBox(height: 20,),
                        Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('ALREADY HAVE AN ACCOUNT?',style: TextStyle(color: Color(0xffA1A4B2)),),
                         TextButton(onPressed: (){
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const Login(),));
                         }, child: Text('LOG IN',style: TextStyle(color: Colors.blue,fontSize: 16),))
                       ],
                     ),
                      ],
                    ),
                  ),
                ),
              )

        ],
      ),
    );
  }
}
