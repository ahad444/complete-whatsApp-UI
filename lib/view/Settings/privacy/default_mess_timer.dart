import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class DefaultMessageTimerscreen extends StatefulWidget {
  const DefaultMessageTimerscreen({Key? key}) : super(key: key);

  @override
  State<DefaultMessageTimerscreen> createState() => _DefaultMessageTimerscreenState();
}

class _DefaultMessageTimerscreenState extends State<DefaultMessageTimerscreen> {
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
          text: 'Default message timer',
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
                    'Start new chats with a disappearing message \ntimer'
                        'set to',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ],
              ),
            ),
            _buildRadioListTile(1, '24 hours'),
            _buildRadioListTile(2, '7 days'),
            _buildRadioListTile(3, '90 days'),
            _buildRadioListTile(4, 'Off'),
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
                            text: 'When turned on, all new individual chats will start\n'
                                'with disappearing messages set to the duration\n'
                                'you select. This will not affect your existing '
                                'chats. ',
                          ),
                          TextSpan(
                            text: 'Learn more',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // Add your onTap functionality here
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
