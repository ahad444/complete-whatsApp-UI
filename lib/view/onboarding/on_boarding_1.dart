import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapui/view/home/home_screen.dart';

import '../../widgets/component/custom_text.dart';
import 'on_boarding_2.dart';


class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  // void initState() {
  //   Timer.periodic(const Duration(seconds: 3), (timer) {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //         builder: (context) => const HomeScreen()));
  //   });
  // }

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
              SizedBox(
                height: 100, // Assuming 'h' is a height scale factor, replace with your specific value
                width: 100, // Assuming 'w' is a width scale factor, replace with your specific value
                child: Image.asset("images/finallogo.jpg"),
              ),
              SizedBox(height: 10,),

              Custom_Text(text: 'Allooyes',fontSize: 20,color:Color(0xFF657983), fontWeight: FontWeight.bold,),

              SizedBox(height: 10,),
              Custom_Text(text: 'A simple, secure and reliable way for\n'
                  '  your business to connect with your \n'

                  '                       customers',fontSize: 15,color:Color(0xFFa6acb1)),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.grey),  // Default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: 'To help improve experiences for you and your customers,\n'
                          '       Allooyes company receives information like your\n'
                          '              business profile and catalog. ',
                    ),
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.blue),  // This changes the color of "Learn more"
                    ),
                  ],
                ),
              ),
              Spacer(),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.grey),  // Default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Tap "Agree and continue" to accept the \n'

                    ),
                    TextSpan(
                      text: '    Allooyes Business Terms of Service',
                      style: TextStyle(color: Colors.blue),  // This changes the color of "Learn more"
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const OnBoarding2()));
                  },
                  child: Container(
                    height: 40, // Set the height of the container
                    width: double.infinity, // Make the container fill the full width
                    decoration: BoxDecoration(
                      color:Color(0xFF3a5664), // Background color of the container
                      borderRadius: BorderRadius.circular(20.0), // This makes the container round
                    ),
                    child: Center(
                      child: Text(
                        'Agree and continue', // The text to be displayed in the center
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 15, // Smaller text size to fit the container height
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 60,),
            ],
          ),
        )

    );
  }
}
