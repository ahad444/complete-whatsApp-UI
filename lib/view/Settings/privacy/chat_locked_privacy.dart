import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class ChatLockedPrivacyScreen extends StatefulWidget {
  const ChatLockedPrivacyScreen({super.key});

  @override
  State<ChatLockedPrivacyScreen> createState() => _ChatLockedPrivacyScreenState();
}

class _ChatLockedPrivacyScreenState extends State<ChatLockedPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Chat lock',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),

      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Icon(Icons.close, size: 60, color: Color(0xFF3b5564)),
          SizedBox(height: 20),
          Center(
            child: Custom_Text(
              text: 'Chat lock keeps your chats\n'
                  '       locked and hidden',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
      RichText(
        text: TextSpan(
          text: 'If you have locked chats, pull down on your chat\n'
              'list or type your secret code in the search bar to\n'
              'fine them',
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' learn more',
              style: TextStyle(

                fontSize: 13,
                color:Color(0xFF2ccb68),
              ),
            ),
          ],
        ),
      ),

          SizedBox(height: 10),
          Divider(color: Color(0xFF657983).withOpacity(0.2)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Custom_Text(
                  text: 'Unlock and clear locked chats',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Custom_Text(
              text: 'If you forget your secret code, you can clear it\n'
                  'This will also unlock and clear messages, photos\n'
                  'and videos in locked chat',
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
