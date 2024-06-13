import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class CallsPrivacyScreen extends StatefulWidget {
  const CallsPrivacyScreen({super.key});

  @override
  State<CallsPrivacyScreen> createState() => _CallsPrivacyScreenState();
}

class _CallsPrivacyScreenState extends State<CallsPrivacyScreen> {
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
        title: Custom_Text(text: 'Calls', fontSize: 17, color: Colors.white),
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
              'Silence unknown callers',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'Calls from unknown number will be silenced. They will still be shows in the Calls tab and in your notifications',
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
