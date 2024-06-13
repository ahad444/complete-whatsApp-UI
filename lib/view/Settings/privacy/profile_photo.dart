import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class ProfilePhotoScreen extends StatefulWidget {
  const ProfilePhotoScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePhotoScreen> createState() => _ProfilePhotoScreenState();
}

class _ProfilePhotoScreenState extends State<ProfilePhotoScreen> {
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
          text: 'Profile photo',
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
                    'Who can see my Profile Photo',
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
