import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapui/view/tools/advertise/advertise_view.dart';
import 'package:whatsapui/view/tools/awaymessage/away_message.dart';
import 'package:whatsapui/view/tools/bussinessprofile/BusinessProfile.dart';
import 'package:whatsapui/view/tools/catalog/catalog_view.dart';
import 'package:whatsapui/view/tools/facebookandinstagram/fb_insta.dart';

import 'package:whatsapui/view/tools/quickreplies/quick_replies.dart';

import '../../model/call_model/CallItemModel.dart';
import '../../model/call_model/call_helper.dart';
import '../../widgets/component/custom_text.dart';
import 'greetingmessage/greeting_message.dart';
import 'labels/labels_view.dart';

class ToolsView extends StatelessWidget {
  const ToolsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Custom_Text(
              text: 'Welcome to Allooyes',
              fontSize: 20,
              color:Color(0xFF121b21),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10,),
            Custom_Text(
              text: 'The place to manage your profile, promote your\n'
                  'products and bring in new customers. Check back \n'
                  'regularly for new features ',
              fontSize: 13,
              color:Color(0xFF657983),

            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusinessProfile()),
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
                        color:Color(0xFF657983),
                        Icons.store_outlined, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Profile',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Manage address, hours and websites',
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CatalogView()),
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
                        Icons.call_to_action_outlined, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Catalog',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Show products and services',
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
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
                Custom_Text(
                  text: 'Reach more customers ',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color:Color(0xFF657983),
                ),
              ],
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdvertiseView()),
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
                        Icons.close, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Advertise',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Create ads that lead to Allooyes',
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FacebookAndInstaView()),
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
                        Icons.close, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Facebook & Instagram',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Add Allooyes to your accounts',
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
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
                Custom_Text(
                  text: 'Messaging',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,

                  color:Color(0xFF657983),
                ),
              ],
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GreetingMessage()),
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
                      child:  Icon(
                        Icons.close, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Greeting message',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Welcome new customers automatically',
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AwayMessage()),
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
                      child:  Icon(
                        Icons.close, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Away message',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Reply automatically when you are away',
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuickRepliesScreen()),
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
                      child: Image.asset(
                        'images/q.png',
                        color: Color(0xFF657983).withOpacity(0.7),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Quick replies',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Reuse frequent messages',
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LabelsView()),
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
                        color:Color(0xFF657983),
                        Icons.label_outline, // Replace with the icon you want to use
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Custom_Text(
                                    text: 'Labels',
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Custom_Text(
                                    text: 'Organize chats and customers',
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
            Divider(),


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
                        color:Color(0xFF657983),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}