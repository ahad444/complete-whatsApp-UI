import 'package:flutter/material.dart';
import 'package:whatsapui/view/Settings/privacy/about_privacy.dart';
import 'package:whatsapui/view/Settings/privacy/advance_privacy_screen.dart';
import 'package:whatsapui/view/Settings/privacy/app_lock_privacy_screen.dart';
import 'package:whatsapui/view/Settings/privacy/blocked_con_screen.dart';
import 'package:whatsapui/view/Settings/privacy/calls_privacy.dart';
import 'package:whatsapui/view/Settings/privacy/chat_locked_privacy.dart';
import 'package:whatsapui/view/Settings/privacy/groups_privacy_Screen.dart';
import 'package:whatsapui/view/Settings/privacy/last_seen_screen.dart';
import 'package:whatsapui/view/Settings/privacy/live_loc_screen.dart';
import 'package:whatsapui/view/Settings/privacy/profile_photo.dart';
import 'package:whatsapui/view/Settings/privacy/status_privaxy_screen.dart';
import '../../../../widgets/component/custom_text.dart';
import 'default_mess_timer.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Privacy',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Who can see my personal info',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LastSeenScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Last seen and online',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Nobody',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePhotoScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Profile photo',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Everyone',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Everyone',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StatusPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'My contacts',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),

                ListTile(
                  title: Text(
                    'Read receipts',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'If turned off, you would not send or receive Read receipts. Read receipts are always sent for group chats',
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
                SizedBox(height: 10),
                Divider(color: Color(0xFF657983).withOpacity(0.2)),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Add your onTap functionality here
                  },
                  child: ListTile(
                    title: Text(
                      'Disappearing messages',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DefaultMessageTimerscreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Default message timer',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Start new chats with disappearing messages set to your timer',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                    trailing: Text(
                      'Off',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Divider(color: Color(0xFF657983).withOpacity(0.2)),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupsPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Groups',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Everyone',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LiveLocationPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Live location',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'None',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CallsPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Calls',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Silence unknown callers',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlockedContactsPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Blocked contacts',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'None',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppLockPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'App lock',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Disabled',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatLockedPrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Chat lock',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdvancePrivacyScreen()),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Advanced',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Protect IP address in calls, Disable link preview',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF657983),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
