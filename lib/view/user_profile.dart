import 'package:flutter/material.dart';
import '../../../widgets/component/custom_text.dart';


class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF3b5564),

          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Share'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('edit'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('View in address book'),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text('Label chat'),
                  value: 4,
                ),
                PopupMenuItem(
                  child: Text('Verify security code'),
                  value: 4,
                ),

              ],
              onSelected: (value) {
                // Handle selection here
                switch (value) {
                  case 1:
                  // Handle Option 1
                    break;
                  case 2:
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ShortLinks()),
                    // );

                }
              },
            ),
          ],
        ),
        body: Column(
          children:
          [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 50, // Adjust size as needed
                    backgroundImage: NetworkImage('https://example.com/your_image.jpg'), // URL of your image
                  ),

                ),
                SizedBox(height: 5,),
                Custom_Text(
                  text: 'Jack',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5,),
                Custom_Text(
                  text: 'UserName',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5,),
                Custom_Text(
                  text: 'Other Bussiness',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),

              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Adjust spacing between avatar and icons
                  Column(
                    children: [
                      Icon(Icons.call_outlined),
                      Custom_Text(
                        text: 'Call',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ), // Replace 'Icons.icon1' with the icon you want

                  Column(
                    children: [
                      Icon(Icons.close),
                      Custom_Text(
                        text: 'Share',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ), // Replace 'Icons.icon2' with the icon you want
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
