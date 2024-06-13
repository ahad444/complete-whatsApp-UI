import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../widgets/component/custom_text.dart';

class QuickRepliesScreen extends StatefulWidget {
  const QuickRepliesScreen({super.key});

  @override
  State<QuickRepliesScreen> createState() => _QuickRepliesScreenState();
}

class _QuickRepliesScreenState extends State<QuickRepliesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Quick replies', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Row(
                    children: [
                      Custom_Text(
                        text: 'thanks ',
                        fontSize: 15,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Custom_Text(
                          text: 'Thank you for your business! We look forward to\n'
                              'working with you again',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(),
                Center(
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
                                text: 'To use type / with your keyboard or select quick  \n'
                                    ' replies from the attachment tray '

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
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => AddQuickReplyScreen(),
                  ),
                );
              },
              child: Icon(Icons.add, size: 28, color: Colors.white),
              backgroundColor: Color(0xFF3b5564),
            ),
          ),
        ],
      ),
    );
  }
}

class AddQuickReplyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Quick replies', fontSize: 20, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle action text press here
              print('Action text pressed');
            },
            child: Custom_Text(
              text: 'Save',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('This is the content of the Add Quick Reply screen.'),
      ),
    );
  }
}
