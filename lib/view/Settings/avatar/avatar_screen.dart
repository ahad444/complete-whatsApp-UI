import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class AvatarSettingsScreen extends StatefulWidget {
  const AvatarSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AvatarSettingsScreen> createState() => _AvatarSettingsScreenState();
}

class _AvatarSettingsScreenState extends State<AvatarSettingsScreen> {
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
        title: Custom_Text(text: 'Avatar', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Image.asset(
                  "images/d2.png",
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed action here
                  },
                  child: Icon(Icons.edit_outlined),
                  backgroundColor: Color(0xFFd9f9f8),
                  mini: true,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Custom_Text(
                      text: 'Browse stickers',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Custom_Text(
                      text: 'Create profile photo',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                Divider(color:Color(0xFF657983).withOpacity(0.1),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Custom_Text(
                      text: 'Learn more',
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Custom_Text(
                      text: 'Delete avatar',
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),


              ],
            ),
          )

        ],
      ),
    );
  }
}
