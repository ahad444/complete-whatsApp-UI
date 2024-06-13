import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';
import '../shortlinks/short_links.dart';

class AwayMessage extends StatefulWidget {
  const AwayMessage({super.key});

  @override
  State<AwayMessage> createState() => _AwayMessageState();
}

class _AwayMessageState extends State<AwayMessage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(
            text: 'AwayMessage ', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          Custom_Text(text: 'Save', fontSize: 17, color: Colors.white),
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Discard changes'),
                value: 1,
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
      body: Column(
        children: [
          ListTile(
            title: Custom_Text(
                text: 'Send away message',
                fontSize: 15,
                color: Colors.black),
            subtitle: Custom_Text(
              text:
              'Automatically reply with a message when you are away',
              fontSize: 13,
              color: Color(0xFF657983),
            ),
            trailing: Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
          ),
          ListTile(
            title: Custom_Text(
                text: 'Away message',
                fontSize: 15,
                color:Color(0xFF657983).withOpacity(0.4)),
            subtitle: Custom_Text(
              text:
              'Thank you for your message. We are unavailable right now, but will respond as soon as possible',
              fontSize: 13,
              color: Color(0xFF657983).withOpacity(0.4),
            ),
            trailing: Icon(Icons.edit_outlined,color: Color(0xFF657983).withOpacity(0.4),),
          ),
          ListTile(
            title: Custom_Text(
                text: 'Schedule',
                fontSize: 15,
                color:Color(0xFF657983).withOpacity(0.4)),
            subtitle: Custom_Text(
              text:
              'Always send',
              fontSize: 13,
              color: Color(0xFF657983).withOpacity(0.4),
            ),

          ),
          ListTile(
            title: Custom_Text(
                text: 'Recipient',
                fontSize: 15,
                color:Color(0xFF657983).withOpacity(0.4)),
            subtitle: Custom_Text(
              text:
              'Send to everyone',
              fontSize: 13,
              color: Color(0xFF657983).withOpacity(0.4),
            ),

          ),

          Divider(color: Color(0xFF657983).withOpacity(0.4),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF657983).withOpacity(0.7),
                        ),
                        children: [
                          TextSpan(
                              text: 'Away messagese are only sent when the phone \n'
                                  'has an active internet connection\n'),
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
          ),
        ],
      ),
    );
  }
}
