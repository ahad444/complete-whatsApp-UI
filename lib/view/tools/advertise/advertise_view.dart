import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class AdvertiseView extends StatefulWidget {
  const AdvertiseView({super.key});

  @override
  State<AdvertiseView> createState() => _AdvertiseViewState();
}

class _AdvertiseViewState extends State<AdvertiseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Advertise', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: Custom_Text(text: 'Advertise from PKR279.86/day', fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold,)),
          SizedBox(height: 20,),
          Center(child: Custom_Text(text: 'Get Allooyes chats from potential customers \n'
              '            with this recommended ad', fontSize: 15, color: Colors.black,)),
          Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF3b5564),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Custom_Text(
                  text: 'Get started',
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Center(
                child: Custom_Text(
                  text: 'Choose another media',
                  fontSize: 15,
                  color:Color(0xFF657983),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 60,),


        ],
      ),
    );
  }
}
