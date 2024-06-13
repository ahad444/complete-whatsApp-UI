import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class LastSeenScreen extends StatefulWidget {
  const LastSeenScreen({Key? key}) : super(key: key);

  @override
  State<LastSeenScreen> createState() => _LastSeenScreenState();
}

class _LastSeenScreenState extends State<LastSeenScreen> {
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
          text: 'Last seen and online',
          fontSize: 17,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          PopupMenuButton(
            icon: const Padding(
              padding: EdgeInsets.only(right: 17),
              child: Icon(Icons.more_vert, color: Colors.white),
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Statistics'),
                value: 1,
              ),
              const PopupMenuItem(
                child: Text('Short link'),
                value: 2,
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 1:
                // Handle statistics
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShortLinks()),
                  );
                  break;
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Who can see my last seen',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ],
              ),
            ),
            _buildRadioListTile(1, 'Everyone'),
            _buildRadioListTile(2, 'My contacts'),
            _buildRadioListTile(3, 'My contacts except...'),
            _buildRadioListTile(4, 'Nobody'),

            SizedBox(height: 10),
            Divider(color: Color(0xFF657983).withOpacity(0.2)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Who can see when i am online',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ],
              ),
            ),
            _buildRadioListTile(5, 'Everyone'),
            _buildRadioListTile(6, 'Same as lastseen'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded( // Added to ensure the text fits within the row
                    child: Text(
                      'If you do not share when you were last seen or '
                          'online, you would not be able to see when other people '
                    'were last seen or online.',
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
