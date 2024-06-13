import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapui/view/Settings/Account/QRcodeScanner/qr_code_scanner.dart';
import 'package:whatsapui/view/Settings/Account/account_screen.dart';
import 'package:whatsapui/view/Settings/avatar/avatar_screen.dart';
import 'package:whatsapui/view/Settings/chats/chats_settings.dart';
import 'package:whatsapui/view/Settings/notification/noti_screen.dart';
import 'package:whatsapui/view/Settings/privacy/privacy_screen.dart';
import 'package:whatsapui/view/Settings/storage_settings/storage_settings_screen.dart';
import 'package:whatsapui/view/tools/advertise/advertise_view.dart';
import 'package:whatsapui/view/tools/businesstools/business_tools.dart';
import 'package:whatsapui/view/tools/bussinessprofile/BusinessProfile.dart';
import 'package:whatsapui/view/tools/catalog/catalog_view.dart';
import 'package:whatsapui/view/tools/facebookandinstagram/fb_insta.dart';
import 'package:whatsapui/view/tools/labels/labels_view.dart';
import 'package:whatsapui/view/tools/quickreplies/quick_replies.dart';
import 'package:whatsapui/view/tools/shortlinks/short_links.dart';

import '../../../widgets/component/custom_text.dart';
import '../tools/awaymessage/away_message.dart';
import '../tools/greetingmessage/greeting_message.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Settings', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          PopupMenuButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Icon(Icons.search, color: Colors.white),
            ),
            itemBuilder: (context) =>
            [
              PopupMenuItem(
                child: Text('Statistics'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Short link'),
                value: 2,
              ),

            ],
            onSelected: (value) {
              // Handle selection here
              switch (value) {
                case 1:
                // Handle Option 1
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShortLinks()),
                  );
              }
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Custom_Text(
                text: 'Anas Ibrahim',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: 'Greet customers on no activity',
                fontSize: 13,
                color: Color(0xFF657983),
              ),
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusinessProfile()),
                  );
                },
                child: CircleAvatar(
                  radius: 25, // Adjust the radius as needed
                  backgroundImage: NetworkImage(
                      'https://example.com/path/to/image.jpg'), // Replace with your image URL
                  // Alternatively, use AssetImage for local assets:
                  // backgroundImage: AssetImage('assets/path/to/image.png'),
                ),
              ),

              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShortLinkQRScreen()),
                  );
                },
                child: Icon(
                  Icons.qr_code, // Use the qr_code icon
                  color: Color(0xFF2ccb68), // Adjust the color as needed
                ),
              ),
              onTap: () {
                // Define the action to be performed on tap
              },
            ),
            Divider(color: Color(0xFF657983).withOpacity(0.1),),
            SizedBox(height: 10,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BusinessTools()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.store_outlined,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Business tools',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Profile, catalog, messaging tool',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.key_outlined,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [

                                        Custom_Text(
                                          text: 'Account',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Security notifications, change number',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrivacyScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.lock_outline,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Privacy',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Block contacts, disappearing messages',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AvatarSettingsScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.emoji_emotions_outlined,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Avatar',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Create, edit, profile photo',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatsSettingsScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.close,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Chats',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Theme, wallpapers, chat history',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotiScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.notifications_outlined,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Notifications',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Message, group & call tones',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StorageSettingsScreen()),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.data_saver_off_outlined,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Storage and data',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Network usage, auto download',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),


                  GestureDetector(
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => LabelsView()),
                    //   );
                    // },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Icon(
                              color: Color(0xFF657983),
                              Icons.close,
                              // Replace with the icon you want to use
                              size: 28, // Adjust the size of the icon if needed
                            ),

                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Show options for different languages
                              _showLanguageOptions(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Custom_Text(
                                            text: 'App language',
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          Custom_Text(
                                            text: 'English(device language)',
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => LabelsView()),
                    //   );
                    // },

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: Image.asset(
                              'images/qc.webp',
                              color: Color(0xFF657983),
                              width: 25,
                              height: 25,
                            ),

                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Custom_Text(
                                          text: 'Help center',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Custom_Text(
                                          text: 'Get help, contact us',
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                  ],

                                ),
                                Custom_Text(
                                  text: 'from',
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                ]

            ),
          ],
        ),
      ),

    );
  }
  void _showLanguageOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Language"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Add your language options here
              ListTile(
                title: Text("English"),
                onTap: () {
                  // Handle selection of English language
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Spanish"),
                onTap: () {
                  // Handle selection of Spanish language
                  Navigator.pop(context);
                },
              ),
              // Add more language options as needed
            ],
          ),
        );
      },
    );
  }
}