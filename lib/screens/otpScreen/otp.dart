import 'package:flutter/material.dart';
import 'package:home_service_app/screens/locationScreen/location.dart';
import 'package:home_service_app/widgets/custom_button.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextEditingController> otpControllers =
    List.generate(4, (_) => TextEditingController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 70),
              child: Image.asset("assets/images/otp.png", height: 187),
            ),
            const Text(
              "OTP Verification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text("Enter the OTP sent to +1 9879878975",style: TextStyle(fontSize: 15),),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                otpControllers.length,
                    (index) => SizedBox(
                  width: 50,
                  child: TextField(
                    controller: otpControllers[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(counterText: ""),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('OTP not received?',style: TextStyle(color: Color(0xffA1A4B2),fontSize: 15),),
                TextButton(
                  onPressed: () {},
                  child: const Text("RESEND OTP",style: TextStyle(fontSize: 15,color: Colors.blue),),
                ),
              ],
            ),
            SizedBox(height:40 ,),
            CustomButton(text: 'VERIFY & PROCEED', height: 63, backgroundColor: Colors.black, onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Location(),));            })
          ],
        ),
      ),
    );
  }
}