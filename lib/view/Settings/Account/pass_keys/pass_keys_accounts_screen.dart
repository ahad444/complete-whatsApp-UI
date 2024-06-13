import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';



class PassKeysAccountsScreen extends StatefulWidget {
  const PassKeysAccountsScreen({Key? key}) : super(key: key);

  @override
  State<PassKeysAccountsScreen> createState() => _PassKeysAccountsScreenState();
}

class _PassKeysAccountsScreenState extends State<PassKeysAccountsScreen> {
  // Example data, replace these with your actual data source

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'PassKeys',
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

            const SizedBox(height: 50),
            Custom_Text(
              text: 'Make your next login easier',
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Center(
                  child: Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: 'Access Allooyes the same way you unlock\n'
                                'your phone with your fingerprint, face or screen\n'
                                'lock. Your passkey gives you a secure and easy\n'
                                'way to log back into your account. '
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
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
