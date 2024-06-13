import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';

class EmailAdress extends StatefulWidget {
  const EmailAdress({Key? key}) : super(key: key);

  @override
  State<EmailAdress> createState() => _EmailAdressState();
}

class _EmailAdressState extends State<EmailAdress> {
  bool isSwitched = false;
  String email = '@gmail.com';

  void _showEmailDialog() {
    TextEditingController emailController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter your email'),
          content: TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Enter your email"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  email = emailController.text.isNotEmpty ? emailController.text : email;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Email address',
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
            Icon(Icons.email, size: 90, color: Color(0xFF2ccb68),),
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
                          text: 'Email helps you access your account. Your Email\n'
                              'address is not visible to others unless you add it to\n'
                              'your business profile\n',
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
                Custom_Text(
                  text: 'Email',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Text(
                      text: '$email\n',
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit_outlined,
                        color: Color(0xFF657983),
                      ),
                      onPressed: _showEmailDialog,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.close,
                      color: Color(0xFF657983),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Pending verification. ',),
                            TextSpan(
                              text: 'Verify email',
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

              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF3b5564),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Custom_Text(
                    text: 'Add email',
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
