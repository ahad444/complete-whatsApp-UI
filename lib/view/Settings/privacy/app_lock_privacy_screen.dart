import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class AppLockPrivacyScreen extends StatefulWidget {
  const AppLockPrivacyScreen({super.key});

  @override
  State<AppLockPrivacyScreen> createState() => _AppLockPrivacyScreenState();
}

class _AppLockPrivacyScreenState extends State<AppLockPrivacyScreen> {
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
        title: Custom_Text(text: 'App lock', fontSize: 17, color: Colors.white),
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
              'Unlock with biometric',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'When enabled. you will need to use fingerprint, face or other unique identifiers to open Allooyes. you can still answer calls  if allooyes is locked.',
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
