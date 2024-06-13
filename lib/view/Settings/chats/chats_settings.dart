
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';



class ChatsSettingsScreen extends StatefulWidget {
  const ChatsSettingsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsSettingsScreen> createState() => _ChatsSettingsScreenState();
}

class _ChatsSettingsScreenState extends State<ChatsSettingsScreen> {
  int _selectedOption = 1;
  double _fontSize = 14.0;

  bool isOn = false;

  void _toggleSwitch() {
    setState(() {
      isOn = !isOn;
    });
  }
  // Example data, replace these with your actual data source

  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Chats',
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
        child: Column(
          children: [



            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                ListTile(

                  title: Text(
                    'Display',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:Color(0xFF657983),
                    ),
                  ),

                ),
                ListTile(
                  leading: Icon(
                    Icons.close,
                    color: Color(0xFF657983),
                    size: 28,
                  ),
                  title: Text(
                    'Theme',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    _selectedOption == 1 ? 'Option 1' :
                    _selectedOption == 2 ? 'Option 2' :
                    'Option 3',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Choose Theme"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile<int>(
                                    title: Text("System default"),
                                    value: 1,
                                    groupValue: _selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<int>(
                                    title: Text("Light"),
                                    value: 2,
                                    groupValue: _selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<int>(
                                    title: Text("Dark"),
                                    value: 3,
                                    groupValue: _selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the dialog
                                  },
                                  child: Text('Cancel',style: TextStyle(color: Colors.black),),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the dialog
                                  },
                                  child: Text('OK',style: TextStyle(color: Colors.black),),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                ),


                ListTile(
                  leading: Icon(
                    color:Color(0xFF657983),
                    Icons.close, // Replace with the icon you want to use
                    size: 28, // Adjust the size of the icon if needed
                  ),

                  title: Text(
                    'Wallpaper',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                ),
                SizedBox(height: 10,),
                Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                SizedBox(height: 10,),
                ListTile(

                  title: Text(
                    'Chat settings',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:Color(0xFF657983),
                    ),
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.only(left:40 ),
                  child: Column(
                    children: [
                      ListTile(

                        title: Text(
                          'Enter is send',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'Enter key will send your message',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),
                        trailing: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),

                      ),
                      ListTile(

                        title: Text(
                          'Media visibility',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'Show newly downloaded media in your device gallery',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                        ),

                      ),
                      ListTile(
                        title: Text(
                          'Font size',
                          style: TextStyle(
                            fontSize: _fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          _fontSize == 12.0 ? 'Small' :
                          _fontSize == 14.0 ? 'Medium' :
                          'Large',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF657983),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (context, setState) {
                                  return AlertDialog(
                                    title: Text("Choose Font Size"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        RadioListTile<double>(
                                          title: Text("Small"),
                                          value: 12.0,
                                          groupValue: _fontSize,
                                          onChanged: (double? value) {
                                            setState(() {
                                              _fontSize = value!;
                                            });
                                            Navigator.of(context).pop(); // Close the dialog
                                          },
                                          activeColor: Color(0xFF2ccb68), // Selected radio color
                                        ),
                                        RadioListTile<double>(
                                          title: Text("Medium"),
                                          value: 14.0,
                                          groupValue: _fontSize,
                                          onChanged: (double? value) {
                                            setState(() {
                                              _fontSize = value!;
                                            });
                                            Navigator.of(context).pop(); // Close the dialog
                                          },
                                          activeColor: Color(0xFF2ccb68), // Selected radio color
                                        ),
                                        RadioListTile<double>(
                                          title: Text("Large"),
                                          value: 16.0,
                                          groupValue: _fontSize,
                                          onChanged: (double? value) {
                                            setState(() {
                                              _fontSize = value!;
                                            });
                                            Navigator.of(context).pop(); // Close the dialog
                                          },
                                          activeColor: Color(0xFF2ccb68), // Selected radio color
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // Close the dialog
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // Close the dialog
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),

                    ],
                  ),
                ),
                ListTile(

                  title: Text(
                    'Archived chats',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:Color(0xFF657983),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left:40 ),
                  child: Column(
                    children: [
                      ListTile(

                        title: Text(
                          'Keep chats archived',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'Archived chats will remain archived when you receive a new message',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                        ),

                      ),

                    ],
                  ),
                ),
                ListTile(
                  leading:  Icon(
                    color:Color(0xFF657983),
                    Icons.close, // Replace with the icon you want to use
                    size: 28, // Adjust the size of the icon if needed
                  ),

                  title: Text(
                    'Chat backup',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),


                ),
                ListTile(
                  leading:  Icon(
                    color:Color(0xFF657983),
                    Icons.close, // Replace with the icon you want to use
                    size: 28, // Adjust the size of the icon if needed
                  ),

                  title: Text(
                    'Chat history',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),


                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
