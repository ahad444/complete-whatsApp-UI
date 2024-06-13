import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class BlockedContactsPrivacyScreen extends StatefulWidget {
  const BlockedContactsPrivacyScreen({super.key});

  @override
  State<BlockedContactsPrivacyScreen> createState() => _BlockedContactsPrivacyScreenState();
}

class _BlockedContactsPrivacyScreenState extends State<BlockedContactsPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Blocked contacts',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Icon(Icons.close, size: 60, color: Color(0xFF3b5564)),
          SizedBox(height: 20),
          Center(
            child: Custom_Text(
              text: 'No blocked contacts',
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Custom_Text(
              text: 'Tap the * icon to select a contact '
                  'to block',
              fontSize: 13,
              color: Colors.black,

            ),
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xFF657983).withOpacity(0.2)),
          SizedBox(height: 10),
          Center(
            child: Custom_Text(
              text: 'Blocked contacts will no longer be able to call\n'
                  'you or send you messages.',
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
