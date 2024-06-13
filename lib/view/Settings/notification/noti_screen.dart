import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../tools/shortlinks/short_links.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({Key? key}) : super(key: key);

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  bool isOn = false;
  String _vibrationSetting = "Off";
  String _lightSetting = "White";

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
          text: 'Notifications',
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
          PopupMenuButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Icon(Icons.more_vert, color: Colors.white),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Reset notification settings'),
                value: 1,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Conversation tones',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Play sounds for incoming and outgoing messages',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
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
                Divider(
                  color: Color(0xFF657983).withOpacity(0.2),
                ),
                ListTile(
                  title: Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Notification tone',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default()',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible:
                          false, // Prevents closing on outside tap
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Vibrate"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile<String>(
                                    title: Text("Off"),
                                    value: "Off",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Default"),
                                    value: "Default",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Short"),
                                    value: "Short",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Long"),
                                    value: "Long",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
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
                ListTile(
                  title: Text(
                    'Popup notification',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'No popup',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
        ListTile(
          title: Text(
            'Light',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            'White',
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xFF657983),
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false, // Prevents closing on outside tap
              builder: (BuildContext context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return AlertDialog(
                      title: Text("Light"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile<String>(
                            title: Text("None"),
                            value: "None",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("White"),
                            value: "White",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Blue"),
                            value: "Blue",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Red"),
                            value: "Red",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Green"),
                            value: "Green",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Purple"),
                            value: "Purple",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Yellow"),
                            value: "Yellow",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
                              });
                            },
                            activeColor: Color(0xFF2ccb68), // Selected radio color
                          ),
                          RadioListTile<String>(
                            title: Text("Purple"),
                            value: "Purple",
                            groupValue: _lightSetting,
                            onChanged: (String? value) {
                              setState(() {
                                _lightSetting = value!;
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
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Use high priority notifications',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Show previews of notofications at the top of the screen',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFF657983),
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
                          'Reaction Notifications',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Show notifications for reactions to messages yo send',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFF657983),
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
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Groups',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Notification tone',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default()',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible:
                      false, // Prevents closing on outside tap
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Vibrate"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile<String>(
                                    title: Text("Off"),
                                    value: "Off",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Default"),
                                    value: "Default",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Short"),
                                    value: "Short",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Long"),
                                    value: "Long",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
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
                ListTile(
                  title: Text(
                    'Popup notification',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'No popup',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Light',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'White',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false, // Prevents closing on outside tap
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Light"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile<String>(
                                    title: Text("None"),
                                    value: "None",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("White"),
                                    value: "White",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Blue"),
                                    value: "Blue",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Red"),
                                    value: "Red",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Green"),
                                    value: "Green",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Purple"),
                                    value: "Purple",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Yellow"),
                                    value: "Yellow",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
                                      });
                                    },
                                    activeColor: Color(0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Purple"),
                                    value: "Purple",
                                    groupValue: _lightSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _lightSetting = value!;
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
                ListTile(
                  title: Text(
                    'Groups',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Notification tone',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default()',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Use high priority notifications',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Show previews of notofications at the top of the screen',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFF657983),
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
                          'Reaction Notifications',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Show notifications for reactions to messages yo send',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFF657983),
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
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFF657983).withOpacity(0.2),
                ),
                ListTile(
                  title: Text(
                    'Calls',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Ringtone',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default()',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF657983),
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible:
                      false, // Prevents closing on outside tap
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              title: Text("Vibrate"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RadioListTile<String>(
                                    title: Text("Off"),
                                    value: "Off",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Default"),
                                    value: "Default",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Short"),
                                    value: "Short",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                  RadioListTile<String>(
                                    title: Text("Long"),
                                    value: "Long",
                                    groupValue: _vibrationSetting,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _vibrationSetting = value!;
                                      });
                                    },
                                    activeColor: Color(
                                        0xFF2ccb68), // Selected radio color
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
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
          ],
        ),
      ),
    );
  }
}
