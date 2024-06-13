import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';



class SecurityNotif extends StatefulWidget {
  const SecurityNotif({Key? key}) : super(key: key);

  @override
  State<SecurityNotif> createState() => _SecurityNotifState();
}

class _SecurityNotifState extends State<SecurityNotif> {
  // Example data, replace these with your actual data source

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Security notifications',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Messages and calls in end-to-end\n'
                              'encrypted chats stay between  you and the\n'
                              'people you choose. Not even Allooyes\n'
                              'can read or listen to them.'
                              ' ',
                        ),
                        TextSpan(
                          text: 'Learn More',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),



            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Text(
                      text: 'Show security notifications on this\n'
                          'device',
                      fontSize: 15,


                      color: Colors.black,

                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: 'Get notified when your security code \n'
                                    'changes  for a contacts phone in an \n'
                                    'end-to-end encrypted chat. if you have\n'
                                    'multiple devices , this setting must be\n'
                                    'enabled on each device where you want to\n'
                                    'get notifications.'
                                    ' ',
                              ),
                              TextSpan(
                                text: 'Learn More',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
