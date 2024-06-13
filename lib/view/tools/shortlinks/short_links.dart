import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';

class ShortLinks extends StatefulWidget {
  const ShortLinks({Key? key}) : super(key: key);

  @override
  State<ShortLinks> createState() => _ShortLinksState();
}

class _ShortLinksState extends State<ShortLinks> {
  // Example data, replace these with your actual data source
  final String imageUrl = 'https://example.com/image.jpg';
  final String message = 'Sample message';
  final String time = '12:34 PM';
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Short link',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String choice) {
              // Add your logic for handling menu item selection here
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'option1',
                child: Text('Reset link'),
              ),

              // Add more PopupMenuItems as needed
            ],
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Custom_Text(
                        text: 'https://www.pngwing.com/en/free-png-dbeqi/download',
                        fontSize: 15,
                        color:Color(0xFF2ccb68),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.share,color:Color(0xFF657983),),
                  SizedBox(width: 15,),
                  Custom_Text(
                    text: 'Share Link',
                    fontSize: 15,
                    color: Colors.black,

                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.qr_code,color:Color(0xFF657983),),
                  SizedBox(width: 15,),
                  Custom_Text(
                    text: 'View QR Code',
                    fontSize: 15,
                    color: Colors.black,

                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custom_Text(
                        text: 'Message',
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
                  Custom_Text(
                    text: 'Let customers edit and send a message \n'
                        'on opening your short link',
                    fontSize: 14,
                    color:Color(0xFF657983),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custom_Text(
                        text: 'Hello!  I am interested in one of your\n'
                            'product' ,
                        fontSize: 14,
                        color: Color(0xFF657983).withOpacity(0.4),

                      ),
                      Icon(Icons.edit_outlined,color: Color(0xFF657983).withOpacity(0.4),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Color(0xFF657983).withOpacity(0.4),),
                  SizedBox(height: 10,),
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
                                  text: 'Give your customers a short link so they can start a\n'
                                      'Allooyes chat with you.'
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
            ),
          ],
        ),
      ),
    );
  }
}
