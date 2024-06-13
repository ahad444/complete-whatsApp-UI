import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';

class ChangeNumberScreen extends StatefulWidget {
  const ChangeNumberScreen({Key? key}) : super(key: key);

  @override
  State<ChangeNumberScreen> createState() => _ChangeNumberScreenState();
}

class _ChangeNumberScreenState extends State<ChangeNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Change number',
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
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Icon(Icons.close, size: 90, color: Color(0xFF2ccb68)),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Changing your phone number will\n'
                        'migrate your account info, groups & \n'
                        'settings.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: 'Before proceeding, please confirm that you\n'
                        'are able to receive SMS or calls at your new \n'
                        'number.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: 'If you have both a new phone & a new \n'
                        'number, first change your number on your old\n'
                        'phone',
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 40.0,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF3b5564),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Custom_Text(
                    text: 'Next',
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
