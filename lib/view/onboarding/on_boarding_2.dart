import 'dart:async';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapui/view/home/home_screen.dart';

import '../../widgets/component/custom_text.dart';
import '../../widgets/component/custom_text_field_4.dart';


class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  // void initState() {
  //   Timer.periodic(const Duration(seconds: 3), (timer) {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //         builder: (context) => const HomeScreen()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(

            children: [

              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5, left: 10, right: 10),
                child: Row(
                  children: [
                    Spacer(), // This Spacer will take up all available space before the text
                    Center(
                      child: Custom_Text(
                        text: 'Verify your phone number',
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(), // This Spacer will take up all available space after the text
                    Icon(Icons.more_vert_outlined, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Custom_Text(
                    text: 'Allooyes will need to verify your phone\n'
                        '   number Carrier charges may apply',
                    fontSize: 15,
                    color: Colors.grey,

                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final code =
                        await countryPicker.showPicker(context: context);
                        setState(() {
                          countryCode = code;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 55,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                child: countryCode != null
                                    ? countryCode!.flagImage(fit: BoxFit.contain)
                                    : const Text(''),
                              ),
                              const SizedBox(width: 10),
                              Custom_Text(
                                text: countryCode != null
                                    ? countryCode!.dialCode
                                    : "+92",
                                color: Colors.black,
                              ),
                              Container(
                                height: 2,
                                color: Colors.green, // Add green line here
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'EX:1 234 5678',
                                border: InputBorder.none, // Remove under blue line
                              ),
                            ),
                            Container(
                              height: 2,
                              color: Colors.green, // Add green line here
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              Spacer(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
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
                        'Next', // The text to be displayed in the center
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 15, // Smaller text size to fit the container height
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),

            ],

          )

      ),
    );
  }
}
