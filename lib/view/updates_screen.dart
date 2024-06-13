import 'package:flutter/material.dart';
import 'Settings/setting_screen.dart';
import '../widgets/component/custom_text.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Status Section
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Custom_Text(
                        text: 'Status',
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        // Handle your action on selection here
                        print("Selected: $value");
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Edit',
                          child: Text('Status privacy'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Delete',
                          child: Text('Status archive settings'),
                        ),

                      ],
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Icon(Icons.more_vert_outlined, color: Colors.black),
                      ),
                    ),
                  ],
                ),

                ListTile(
                  title: Custom_Text(
                    text: 'My status',
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Custom_Text(
                    text: 'Tap to add status update',
                    fontSize: 13,
                    color: Color(0xFF657983),
                  ),
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage('https://example.com/your_image.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF02a9a5),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Divider(),



                // Channels Section
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Custom_Text(
                        text: 'Channels',
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      Icon(Icons.add, color: Colors.black),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Custom_Text(
                    text: 'Stay updated on topics that matter to you. Find\n'
                        'channels to follow below',
                    fontSize: 13,
                      color:Color(0xFF657983).withOpacity(0.7),

                  ),
                ),
                SizedBox(height: 20,),

                // Channels List
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChannelCard(
                        imageUrl: 'https://example.com/your_image.jpg',
                        name: 'Pakistan Cricket',
                      ),
                      ChannelCard(
                        imageUrl: 'https://example.com/your_image.jpg',
                        name: 'The Express',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Center(
                      child: Custom_Text(
                        text: 'Explore more',
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    height: 40.0,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFF3b5564),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
              ],
            ),
          ),
          // Floating Action Button
          Positioned(
            bottom: 0,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Icon(Icons.mic_outlined, size: 20, color: Color(0xFF3b5564)), // Optionally adjust icon size too
              backgroundColor: Color(0xFFd9f9f8),
              mini: true, // This reduces the size of the FloatingActionButton
            ),
          ),

        ],
      ),
    );
  }
}

class StatusAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;

  const StatusAvatar({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 8),
        Custom_Text(
          text: name,
          fontSize: 15,
          color: Colors.black,
        ),
      ],
    );
  }
}

class ChannelItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final int messageCount;

  const ChannelItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.messageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Custom_Text(
                  text: name,
                  fontSize: 14,
                  color: Colors.black,
                ),
                Custom_Text(
                  text: message,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Custom_Text(
                text: time,
                fontSize: 15,
                color: Colors.green,
              ),
              SizedBox(height: 5),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 27.0,
                    height: 27.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    '$messageCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChannelCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ChannelCard({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 10),
          Custom_Text(
            text: name,
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          Container(
            height: 40.0,
            width: 130.0,
            decoration: BoxDecoration(
              color: Color(0xFFd7d8de).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Custom_Text(
                text: 'Follow',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
