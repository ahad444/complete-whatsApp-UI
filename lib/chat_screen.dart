import 'package:flutter/material.dart';
import 'package:whatsapui/view/tools/shortlinks/short_links.dart';
import 'package:whatsapui/view/user_profile.dart';
import 'package:whatsapui/widgets/component/custom_text.dart';

import 'model/message_model/message_helper.dart';
import 'model/message_model/message_model.dart';

class ChatScreen extends StatefulWidget {
  final String name, image;
  const ChatScreen({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool showMainMenu = true;

  final List<String> avatarNames = [
    'Document',
    'Camera',
    'Gallery',
    'Audio',
    'Catalog',
    'Quick Reply',
    'Location',
    'Contact',
    'Poll'
  ];

  Map<String, bool> labels = {
    'Label 1': false,
    'Label 2': false,
    'Label 3': false,
    // Add more labels as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3b5564),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(widget.image),
            ),
            SizedBox(width: 8),
            Text(
              widget.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14, // Adjust the font size as needed
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'images/v3.png',
              color: Colors.white,
              width: 27,
              height: 27,
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.phone_outlined, color: Colors.white),
          const SizedBox(width: 20),
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Label chat'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('View contact'),
                value: 2,
              ),
              PopupMenuItem(
                child: Text('Media, links, and docs'),
                value: 3,
              ),
              PopupMenuItem(
                child: Text('Search'),
                value: 4,
              ),
              PopupMenuItem(
                child: Text('Mute notifications'),
                value: 5,
              ),
              PopupMenuItem(
                child: Text('Disappearing messages'),
                value: 6,
              ),
              PopupMenuItem(
                child: Text('Wallpaper'),
                value: 7,
              ),
            ],
            onSelected: (value) {
              // Handle main menu options
              switch (value) {
                case 1:
                  _showLabels(context);
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfileScreen()),
                  );
                  break;
              // Handle other main menu options
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: MessageHelper.itemCount,
                itemBuilder: (context, index) {
                  MessageItemModel chatItem = MessageHelper.getCHatList(index);
                  return MessageBubble(
                    isMe: index % 2 == 0,
                    message: chatItem.mostRecentMessage,
                    isSeen: false,
                    time: chatItem.messageDate,
                    onPress: () {},
                    index: index,
                    listLength: MessageHelper.itemCount,
                    type: chatItem.type,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade100,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 15),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.emoji_emotions_outlined),
                                onPressed: () {

                                },
                              ),
                              Expanded(
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff9C9EB9),
                                  ),
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 0.0,
                                    ),
                                    hintText: 'Message...',
                                    hintStyle: TextStyle(
                                      color: Color(0xff4c5c65),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.attach_file),
                                onPressed: () {
                                  _showAttachmentOptions(context);
                                },
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.camera_alt_outlined),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFF1dab69).withOpacity(0.9),
                    radius: 20,
                    child: Icon(
                      Icons.mic,
                      size: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAttachmentOptions(BuildContext context) {
    List<Widget> imageWidgets = [
      Image.asset(
        'images/d2.png',
        color: Colors.white,
        width: 25,
        height: 22,
      ), // Add more icons if needed
      Icon(
        Icons.camera_alt,
        size: 25,
        color: Colors.white,
      ),
      Image.asset(
        'images/g.png',
        color: Colors.white,
        width: 40,
        height: 40,
      ),
      Icon(
        Icons.headphones,
        size: 25,
        color: Colors.white,
      ),
      Icon(
        Icons.store,
        size: 25,
        color: Colors.white,
      ),
      Image.asset(
        'images/q.png',
        color: Colors.white,
        width: 25,
        height: 25,
      ),
      Icon(
        Icons.pin_drop_outlined,
        size: 25,
        color: Colors.white,
      ),
      Icon(
        Icons.person,
        size: 25,
        color: Colors.white,
      ),
      Image.asset(
        'images/p.png',
        color: Colors.white,
        width: 20,
        height: 20,
      ),
      // Add more images or icons as needed
    ];

    List<Color> colors = [
      Color(0xFF745de8),
      Color(0xFFE34467),
      Color(0xFFb659e5),
      Color(0xFFe75b2a),
      Color(0xFF756BC6),
      Color(0xFFF2B710),
      Color(0xFF11895A),
      Color(0xFF0186DA),
      Color(0xFF00878B),
      // Add more colors as needed
    ];

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Adjust the padding as needed
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 320, // Adjust the height as needed
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: avatarNames.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: colors[index % colors.length], // Use color from list
                        child: imageWidgets[index % imageWidgets.length], // Use image/icon from list
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      avatarNames[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _showLabels(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Label Chat',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: labels.keys.map((String label) {
                        Color color = _getColorForLabel(label); // Function to get color for label
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: color,
                            child: Icon(Icons.label_outline, color: Colors.white),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  label,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Checkbox(
                                value: labels[label],
                                onChanged: (bool? value) {
                                  setState(() {
                                    labels[label] = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Do something with the selected labels
                      Navigator.pop(context);
                    },
                    child: Text('Done'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Color _getColorForLabel(String label) {
    // Function to return a color based on the label
    switch (label) {
      case 'Label 1':
        return Colors.blue;
      case 'Label 2':
        return Colors.red;
      case 'Label 3':
        return Colors.green;
      default:
        return Colors.black;
    }
  }


}

class MessageBubble extends StatelessWidget {
  MessageBubble({
    required this.isMe,
    required this.message,
    required this.time,
    required this.onPress,
    required this.index,
    required this.listLength,
    required this.isSeen,
    required this.type,
  });

  final bool isMe;
  final String message, type;
  final String time;
  final VoidCallback onPress;
  final int index;
  final int listLength;
  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2),
          if (type == "msj")
            Align(
              alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
              child: InkWell(
                onTap: onPress,
                child: Material(
                  elevation: 1,
                  color: isMe ? Colors.teal : Colors.black.withOpacity(0.5),
                  borderRadius: isMe
                      ? BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                  )
                      : BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                  ),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Text(
                      message,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          if (type == "image")
            Align(
              alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
              child: InkWell(
                onTap: onPress,
                child: Material(
                  elevation: 1,
                  borderRadius: isMe
                      ? BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                  )
                      : BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                  ),
                  color: isMe ? Colors.teal : Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .5,
                        fit: BoxFit.cover,
                        image: NetworkImage(message)),
                  ),
                ),
              ),
            ),

          SizedBox(
            height: 2,
          ),
          Text(
            time.toString(),
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),

          SizedBox(
            height: 4,
          ),
          // Text(time.toString())
        ],
      ),
    );
  }
}
