import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class AdvancePrivacyScreen extends StatefulWidget {
  const AdvancePrivacyScreen({super.key});

  @override
  State<AdvancePrivacyScreen> createState() => _AdvancePrivacyScreenState();
}

class _AdvancePrivacyScreenState extends State<AdvancePrivacyScreen> {
  bool isOn = false;
  bool isSwitched = false;

  void _toggleSwitch() {
    setState(() {
      isOn = !isOn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Advanced', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),

      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          ListTile(
            title: Text(
              'Protect IP address in calls',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'To make it harder for people to infer your location, calls on this device will be securely relayed through Allooyes servers, This will reduce call quality. Learn more',
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xFF657983),
              ),
            ),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Disable link previews',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'To help protect your IP address from being inferred by third-party websites, previews for the links you share in chats will no longer be generated, Learn more',
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xFF657983),
              ),
            ),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),

        ],
      ),
    );
  }
}
