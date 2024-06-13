import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class StatusPrivacyScreen extends StatefulWidget {
  const StatusPrivacyScreen({Key? key}) : super(key: key);

  @override
  State<StatusPrivacyScreen> createState() => _StatusPrivacyScreenState();
}

class _StatusPrivacyScreenState extends State<StatusPrivacyScreen> {
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
          text: 'Status privacy',
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
                    'Who can see my status updates',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ],
              ),
            ),
            _buildRadioListTile(1, 'My contacts'),
            _buildRadioListTile(2, 'My contacts except...'),
            _buildRadioListTile(3, 'Only share with'),


            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded( // Added to ensure the text fits within the row
                      child: Text(
                        'Changes to your privacy settings would not affect\n'
                            'status updates that you have sent already',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )

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
        style: TextStyle(fontWeight: FontWeight.bold), // Setting the text style to bold
      ),
      value: value,
      groupValue: selectedRadio,
      onChanged: setSelectedRadio,
      activeColor: Color(0xFF2ccb68),  // Color when selected
      selectedTileColor: Color(0xFF2ccb68), // Background color when selected
    );


  }
}
