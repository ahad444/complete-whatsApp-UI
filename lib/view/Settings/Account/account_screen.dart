import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapui/view/Settings/Account/Change_num/change_num.dart';
import 'package:whatsapui/view/Settings/Account/Request_account_info/request_account.dart';
import 'package:whatsapui/view/Settings/Account/Two-Step-V/two_step_ver.dart';
import 'package:whatsapui/view/Settings/Account/emailadress/email_adress.dart';
import 'package:whatsapui/view/Settings/Account/pass_keys/pass_keys_accounts_screen.dart';
import 'package:whatsapui/view/Settings/Account/securitynoti/security_notification.dart';

import '../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Account', fontSize: 17, color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),

      ),
      body: Column(
        children: [

          ListTile(
            leading: Icon(Icons.shield_outlined,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecurityNotif()),
                );
              },
              child: Text(
                'Security notifcations',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.close,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PassKeysAccountsScreen()),
                );
              },
              child: Text(
                'Passkeys',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.email_outlined,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmailAdress()),
                );
              },
              child: Text(
                'Email adress',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.close,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TwoStepVer()),
                );
              },
              child: Text(
                'Two-step verification',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.close,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangeNumberScreen()),
                );
              },
              child: Text(
                'Change number',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.close,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RequestAccountInfoScreen()),
                );
              },
              child: Text(
                'Request account info',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.close,size: 25,color:Color(0xFF657983),),
            title: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecurityNotif()),
                );
              },
              child: Text(
                'Delete account',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ),






        ],
      ),
    );
  }
}
