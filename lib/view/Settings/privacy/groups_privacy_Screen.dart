import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class GroupsPrivacyScreen extends StatefulWidget {
  const GroupsPrivacyScreen({Key? key}) : super(key: key);

  @override
  State<GroupsPrivacyScreen> createState() => _GroupsPrivacyScreenState();
}

class _GroupsPrivacyScreenState extends State<GroupsPrivacyScreen> {
  int selectedRadio = 0;

  void setSelectedRadio(int? value) {
    setState(() {
      if (value != null) {
        selectedRadio = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Groups',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Who can add me to groups',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ],
              ),
            ),
            _buildRadioListTile(1, 'Everyone'),
            _buildRadioListTile(2, 'My contacts'),
            _buildRadioListTile(3, 'My contacts except...'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: 'Admins who can not add you to a groups will \n'
                                'have the'
                                'option of inviting you privately instead.\n'
                          ),

                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),


                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: 'This setting does not apply to community\n'
                                  'annoucement groups. if you are added to \n'
                                  'a community. you will always be added to a'
                                  'community annoucement group\n'
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
    );
  }

  Widget _buildRadioListTile(int value, String text) {
    return RadioListTile<int>(
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      value: value,
      groupValue: selectedRadio,
      onChanged: setSelectedRadio,
      activeColor: Color(0xFF2ccb68),
      selectedTileColor: Color(0xFF2ccb68),
    );
  }
}
