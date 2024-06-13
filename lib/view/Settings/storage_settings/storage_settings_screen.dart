
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapui/view/Settings/storage_settings/proxy/proxy_dart.dart';

import '../../../../widgets/component/custom_text.dart';



class StorageSettingsScreen extends StatefulWidget {
  const StorageSettingsScreen({Key? key}) : super(key: key);

  @override
  State<StorageSettingsScreen> createState() => _StorageSettingsScreenState();
}

class _StorageSettingsScreenState extends State<StorageSettingsScreen> {
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
          text: 'Storage and data',
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
                  leading: Icon(
                    color:Color(0xFF657983),
                    Icons.folder_open_outlined, // Replace with the icon you want to use
                    size: 28, // Adjust the size of the icon if needed
                  ),

                  title: Text(
                    'Manage storage',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    '2.2gbe',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                ),

                SizedBox(height: 10,),
                Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Icon(
                    color:Color(0xFF657983),
                    Icons.data_saver_off_outlined, // Replace with the icon you want to use
                    size: 28, // Adjust the size of the icon if needed
                  ),

                  title: Text(
                    'Network usage',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    '1.9GB sent * 9.4 GB received',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                ),


                Padding(
                  padding: const EdgeInsets.only(left:40 ),
                  child: Column(
                    children: [
                      ListTile(

                        title: Text(
                          'Use less data for calls',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProxyScreen()),
                          );
                        },

                        child: ListTile(
                          title: Text(
                            'Proxy',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            'Off',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(color:Color(0xFF657983).withOpacity(0.2), ),
                SizedBox(height: 10,),

                ListTile(

                  title: Text(
                    'Media auto-download',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:Color(0xFF657983),
                    ),
                  ),

                ),
                ListTile(

                  title: Text(
                    'Voice messages are always automatically downloadeds',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.grey,
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left:40 ),
                  child: Column(
                    children: [
                      ListTile(

                        title: Text(
                          'When using mobile data',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'no media',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),


                      ),
                      ListTile(

                        title: Text(
                          'When connected on Wi-fi',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'no media',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),


                      ),
                      ListTile(

                        title: Text(
                          'When roaming',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),subtitle: Text(
                        'no media',
                        style: TextStyle(
                          fontSize: 12.0,


                          color:Color(0xFF657983),

                        ),
                      ),


                      ),

                    ],
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
