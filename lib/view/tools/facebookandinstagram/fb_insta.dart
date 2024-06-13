import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/component/custom_text.dart';
import '../shortlinks/short_links.dart';

class FacebookAndInstaView extends StatefulWidget {
  const FacebookAndInstaView({super.key});

  @override
  State<FacebookAndInstaView> createState() => _FacebookAndInstaViewState();
}

class _FacebookAndInstaViewState extends State<FacebookAndInstaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
    title: Custom_Text(text: 'Facebook & Instagram', fontSize: 17, color: Colors.white),
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
                child: Text('Learn more'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Contact us'),
                value: 2,
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
          SizedBox(height: 20,),
          Center(child: Custom_Text(text: 'Reach more customers', fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold,)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14, color: Colors.grey),  // Default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Make it easy for people to get in touch with you \n'
                            'and allow Allooyes messaging to your business \n'
                            'pages and profile ',
                      ),
                      TextSpan(
                        text: 'Learn more',
                        style: TextStyle(color: Colors.blue),  // This changes the color of "Learn more"
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


            ],
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: Icon(Icons.facebook_outlined,size: 40,color:Color(0xFF657983),),
            title: Text(
              'Facebook',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),subtitle: Text(
            'Add Whatsapp to your Page',
            style: TextStyle(
              fontSize: 13.0,


              color:Color(0xFF657983),
            ),
          ),
            trailing: Icon(Icons.add),
          ),

          ListTile(
            leading: Image.asset(
              'images/in.png',
              color:Color(0xFF657983),
              width: 27,
              height: 27,
            ),
            title: Text(
              'Instagram',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),subtitle: Text(
            'Add Whatsapp to your profile',

            style: TextStyle(
              fontSize: 13.0,

              color:Color(0xFF657983),
            ),
          ),
            trailing: Icon(Icons.add,
              color:Color(0xFF657983),
            ),
          ),




        ],
      ),
    );
  }
}
