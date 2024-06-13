import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class LinkedDevice extends StatefulWidget {
  const LinkedDevice({super.key});

  @override
  State<LinkedDevice> createState() => _LinkedDeviceState();
}

class _LinkedDeviceState extends State<LinkedDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Linked devices', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Custom_Text(text: 'Use Allooyes on other\n'
                '            devices ', fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold,)),
            SizedBox(height: 20,),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Link up to 4 devices to your Allooyes',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [

                    TextSpan(
                      text: 'account and name each device. ',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue, // or any other color you prefer

                      ),
                      // Add your onTap function here to handle the "Learn more" action
                    ),
                  ],
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
                  color: Color(0xFF3b5564),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Custom_Text(
                    text: 'Link a device',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
