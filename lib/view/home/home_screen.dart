import 'package:flutter/material.dart';
import 'package:whatsapui/view/home/linkeddevice/linked_device.dart';
import 'package:whatsapui/view/tools/advertise/advertise_view.dart';
import 'package:whatsapui/view/tools/businesstools/business_tools.dart';
import 'package:whatsapui/view/tools/bussinessprofile/BusinessProfile.dart';
import 'package:whatsapui/view/tools/labels/labels_view.dart';
import 'package:whatsapui/view/tools/shortlinks/short_links.dart';
import 'package:whatsapui/view/updates_screen.dart';
import 'package:whatsapui/view/tools/tools_view.dart';
import 'package:whatsapui/widgets/component/custom_text.dart';
import '../Settings/setting_screen.dart';
import '../call_screen.dart';
import '../chat_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget? fabIcon; // Declaring fabIcon as nullable

  int _selectedIndex = 0;
  // Default FAB icon

  List<List<IconData>> _appBarIcons = [
    [Icons.camera_alt_outlined, Icons.search],
    [Icons.camera_alt_outlined, Icons.search],
    [Icons.camera_alt_outlined, Icons.search],
    [Icons.camera_alt_outlined],
  ];

  List<PopupMenuEntry<int>> _chatMenuOptions(BuildContext context) {
    return [
      PopupMenuItem<int>(
        child: Text("Advertise"),
        value: 1,
      ),
      PopupMenuItem<int>(
        child: Text("Business tools"),
        value: 2,
      ),
      PopupMenuItem<int>(
        child: Text("New group"),
        value: 3,
      ),
      PopupMenuItem<int>(
        child: Text("New Broadcast"),
        value: 4,
      ),
      PopupMenuItem<int>(
        child: Text("Communities"),
        value: 5,
      ),
      PopupMenuItem<int>(
        child: Text("Labels"),
        value: 6,
      ),
      PopupMenuItem<int>(
        child: Text("Linked devices"),
        value: 7,
      ),
      PopupMenuItem<int>(
        child: Text("Starred messages"),
        value: 8,
      ),
      PopupMenuItem<int>(
        child: Text("Settings"),
        value: 9,
      ),
    ];
  }

  List<PopupMenuEntry<int>> _callsMenuOptions(BuildContext context) {
    return [
      PopupMenuItem<int>(
        child: Text("Advertise"),
        value: 1,
      ),
      PopupMenuItem<int>(
        child: Text("Clear call log"),
        value: 2,
      ),
      PopupMenuItem<int>(
        child: Text("Business tools"),
        value: 3,
      ),
      PopupMenuItem<int>(
        child: Text("Settings"),
        value: 4,
      ),
    ];
  }

  List<PopupMenuEntry<int>> _updatesMenuOptions(BuildContext context) {
    return [
      PopupMenuItem<int>(
        child: Text("Business tools"),
        value: 1,
      ),
      PopupMenuItem<int>(
        child: Text("Settings"),
        value: 2,
      ),
    ];
  }

  List<PopupMenuEntry<int>> _toolsMenuOptions(BuildContext context) {
    return [
      PopupMenuItem<int>(
        child: Text("Advertise"),
        value: 1,
      ),
      PopupMenuItem<int>(
        child: Text("Short link"),
        value: 2,
      ),
      PopupMenuItem<int>(
        child: Text("Settings"),
        value: 3,
      ),
    ];
  }

  List<PopupMenuEntry<int>> _getCurrentMenu(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return _chatMenuOptions(context);
      case 1:
        return _callsMenuOptions(context);
      case 2:
        return _updatesMenuOptions(context);
      case 3:
        return _toolsMenuOptions(context);
      default:
        return [];
    }
  }

  void _onMenuItemSelected(int value) {
    switch (_selectedIndex) {
      case 0:
        _handleChatMenu(value);
        break;
      case 1:
        _handleCallsMenu(value);
        break;
      case 2:
        _handleUpdatesMenu(value);
        break;
      case 3:
        _handleToolsMenu(value);
        break;
    }
  }

  void _handleChatMenu(int value) {
    switch (value) {
    case 1:
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AdvertiseView()),
    );
    break;
    case 2:
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => BusinessTools()),
    );
    break;
    case 3:
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) =>AdvertiseView()),
    // );
    break;
    // case 4:
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => AdvertiseView()),
    // );
    break;
    case 5:
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => AdvertiseView()),
    // );
    break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LabelsView()),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LinkedDevice()),
        );
        break;
      // case 8:
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => AdvertiseView()),
      //   );
        break;
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingScreen()),
        );
        break;
    }
  }

  void _handleCallsMenu(int value) {
    switch (value) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdvertiseView()),
        );
        break;
      case 2:
      // Implement Clear Call Log functionality here
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BusinessTools()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingScreen()),
        );
        break;
    }
  }

  void _handleUpdatesMenu(int value) {
    switch (value) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BusinessTools()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingScreen()),
        );
        break;
    }
  }

  void _handleToolsMenu(int value) {
    switch (value) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdvertiseView()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShortLinks()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3b5564),
        title: Custom_Text(text: 'Allooyes', fontSize: 20, color: Colors.white),
        actions: <Widget>[
          for (var icon in _appBarIcons[_selectedIndex])
            IconButton(
              icon: Icon(icon, color: Colors.white),
              onPressed: () {
                // Handle icon press here
                print('Icon pressed');
              },
            ),
          PopupMenuButton<int>(
            onSelected: _onMenuItemSelected,
            itemBuilder: (context) => _getCurrentMenu(context),
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          ChatListView(),
          CallView(),
          UpdateView(),
          ToolsView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Selected icon color
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold, // Bold text for selected label
          color: Colors.black, // Ensure selected label is black
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal, // Normal text for unselected labels
          color: Colors.grey, // Ensure unselected label is grey
        ),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex != 3) {
              switch (_selectedIndex) {
                case 0:
                  fabIcon = Icon(Icons.chat_sharp,
                  color: Colors.white,
                  );
                  break;
                case 1:
                  fabIcon = Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.call_outlined,
                        color: Colors.white,
                        size: 27,
                      ),
                      Positioned(
                        bottom: 13,
                        right: 0,
                        child: Icon(
                          color: Colors.white,
                          Icons.add,
                          size: 16,
                        ),
                      ),
                    ],
                  );
                  break;
                case 2:
                  fabIcon = Icon(Icons.camera_alt_outlined, color: Colors.white);
                  break;
              }
            } else {
              fabIcon = null; // Hide FloatingActionButton on "Tools" view
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Tools',
          ),
        ],
      ),

           floatingActionButton: fabIcon != null
          ? FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF3b5564),
        child: fabIcon!,
      )
          : null, // Use null when fabIcon should be hidden
    );
  }
}
