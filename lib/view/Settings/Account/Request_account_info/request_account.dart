
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';



class RequestAccountInfoScreen extends StatefulWidget {
  const RequestAccountInfoScreen({Key? key}) : super(key: key);

  @override
  State<RequestAccountInfoScreen> createState() => _RequestAccountInfoScreenState();
}

class _RequestAccountInfoScreenState extends State<RequestAccountInfoScreen> {
  // Example data, replace these with your actual data source

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Request Account Info',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
        
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Custom_Text(
                        text: 'Account information',
                        fontSize: 14,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
        
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,size: 25,color:Color(0xFF657983),),
                      SizedBox(width: 20,),
                      Custom_Text(
                        text: 'Request account report',
                        fontSize: 15,
        
        
        
                        color: Colors.black,
        
                      ),
                      Spacer(),
        
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
        
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Create a report of your Whatsapp account information\n'
                                      'and settings, which you can access or port to another app.\n'
                                      'This report does not include your messages.'
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
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,size: 25,color:Color(0xFF657983),),
                      Custom_Text(
                        text: 'Create reports automatically',
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
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'A new report will be ceeated every month.'
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
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Custom_Text(
                        text: 'Channels activity',
                        fontSize: 14,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,size: 25,color:Color(0xFF657983),),
                      SizedBox(width: 20,),
                      Custom_Text(
                        text: 'Request Channels report',
                        fontSize: 15,
        
        
        
                        color: Colors.black,
        
                      ),
                      Spacer(),
        
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Create a report of your channel updates and informations,\n'
                                      'which u can access or port to another app, '
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
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,size: 25,color:Color(0xFF657983),),
                      Custom_Text(
                        text: 'Create reports automatically',
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
                  SizedBox(height: 10,),
                  Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                  SizedBox(height: 10,),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'A new report will be created every month. '
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
      ),
    );
  }
}
