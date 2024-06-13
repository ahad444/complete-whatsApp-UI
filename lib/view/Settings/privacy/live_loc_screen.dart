import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class LiveLocationPrivacyScreen extends StatefulWidget {
  const LiveLocationPrivacyScreen({super.key});

  @override
  State<LiveLocationPrivacyScreen> createState() => _LiveLocationPrivacyScreenState();
}

class _LiveLocationPrivacyScreenState extends State<LiveLocationPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Live location', fontSize: 17, color: Colors.white),
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
          Icon(Icons.close, size: 60, color: Color(0xFF3b5564)),
          SizedBox(height: 20,),
          Center(child: Custom_Text(text: 'You are not sharing live location in any chats', fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold,)),
          SizedBox(height: 10),
          Divider(color: Color(0xFF657983).withOpacity(0.2)),
          SizedBox(height: 10),
          Center(child: Custom_Text(text: 'Live location requires background location. you\n'
              'can manage this in your device settings', fontSize: 13, color: Colors.grey,)),


        ],
      ),
    );
  }
}
