import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapui/view/home/home_screen.dart';
import 'package:whatsapui/view/onboarding/on_boarding_1.dart';

import '../../widgets/component/custom_text.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const OnBoarding1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // This centers the column's children vertically
          children: [
            Spacer(),

            SizedBox(height: 20), // This adds space between the text and the image
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 100, // Assuming 'h' is a height scale factor, replace with your specific value
                width: 100, // Assuming 'w' is a width scale factor, replace with your specific value
                child: Image.asset("images/finallogo.jpg"),
              ),
            ),
            Spacer(),
            Custom_Text(
              text: 'from',
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w100,

            ),


            Custom_Text(text: 'Allooyes',fontSize: 20,color:Color(0xFF2ccb68), fontWeight: FontWeight.bold,),
            SizedBox(height: 60,),
          ],
        ),
      )

    );
  }
}
