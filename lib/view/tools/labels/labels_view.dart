import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/component/custom_text.dart';
import '../shortlinks/short_links.dart';

class LabelsView extends StatefulWidget {
  const LabelsView({super.key});

  @override
  State<LabelsView> createState() => _LabelsViewState();
}

class _LabelsViewState extends State<LabelsView> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Labels', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Custom_Text(
                text: 'New customer',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFF90cff1),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline, // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'New order',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFFfdd521),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Pending payment',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFFfd948e),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline, // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Paid',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFFdfabf6),
                radius: 25,// Change the background color as needed
                child: Icon(
                 Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Order complete',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFF55cbb2),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Important',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFFf6c7c6),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Follow up',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFF8fcd8e),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            ListTile(
              title: Custom_Text(
                text: 'Lead',
                fontSize: 15,
                color: Colors.black,
              ),
              subtitle: Custom_Text(
                text: '0 items',
                fontSize: 14,
                color: Colors.grey,
              ),
              leading: CircleAvatar(
                backgroundColor:  Color(0xFFa5ace6),
                radius: 25,// Change the background color as needed
                child: Icon(
                  Icons.label_outline,  // Replace with the desired icon
                  color: Colors.white, // Change the icon color as needed
                ),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.equals,
                size: 20,// The Font Awesome equals sign icon
                color: Colors.grey, // Change the icon color as needed
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Use labels to organize your customers and chats \n'
                                  'tap and hold on any message or contact to ',
                            ),
                            TextSpan(
                              text: 'label it',
                              style: TextStyle(
                                color: Colors.grey, // Same color as the surrounding text
                              ),
                            ),
                            TextSpan(
                              text: ' Learn More',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: '\n', // Add newline if needed
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
