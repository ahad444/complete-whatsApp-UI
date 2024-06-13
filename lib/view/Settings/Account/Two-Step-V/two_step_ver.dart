import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';

class TwoStepVer extends StatefulWidget {
  const TwoStepVer({Key? key}) : super(key: key);

  @override
  State<TwoStepVer> createState() => _TwoStepVerState();
}

class _TwoStepVerState extends State<TwoStepVer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Two-step verification',
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.close, size: 90, color: Color(0xFF2ccb68),),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Two-step verification is on. You will need to enter\n'
                              'your PIN if you register your phone number on\n'
                              'Allooyes again. ',
                        ),
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(
                          color: Color(0xFF2ccb68)
                      ),
                    ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(
                      Icons.close,
                      color: Color(0xFF657983),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Turn off ',),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(
                      Icons.close,
                      color: Color(0xFF657983),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Change PIN',),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
