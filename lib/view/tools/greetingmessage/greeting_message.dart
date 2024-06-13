import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';
import '../shortlinks/short_links.dart';

class GreetingMessage extends StatefulWidget {
  const GreetingMessage({super.key});

  @override
  State<GreetingMessage> createState() => _GreetingMessageState();
}

class _GreetingMessageState extends State<GreetingMessage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(
            text: 'GreetingMessage ', fontSize: 17, color: Colors.white),
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
                text: 'Send greeting message',
                fontSize: 15,
                color: Colors.black),
            subtitle: Custom_Text(
              text:
              'Greet customers when they message you the firt time or after 14 days on no activity',
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
                text: 'Greeting message',
                fontSize: 15,
                color:Color(0xFF657983).withOpacity(0.4)),
            subtitle: Custom_Text(
              text:
              'Thank you for contacting us Please let us know how we can help you',
              fontSize: 13,
              color: Color(0xFF657983).withOpacity(0.4),
            ),
            trailing: Icon(Icons.edit_outlined),
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
            trailing: Icon(Icons.edit_outlined),
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
                              text: 'Greeting messagesare only sent when the phone \n'
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
