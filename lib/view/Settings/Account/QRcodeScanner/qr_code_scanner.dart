import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';
import '../../../tools/shortlinks/short_links.dart';

class ShortLinkQRScreen extends StatefulWidget {
  const ShortLinkQRScreen({Key? key}) : super(key: key);

  @override
  State<ShortLinkQRScreen> createState() => _ShortLinkQRScreenState();
}

class _ShortLinkQRScreenState extends State<ShortLinkQRScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Custom_Text(
          text: 'Short link QR',
          fontSize: 17,
          color: Colors.black,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Edit'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Reset link'),
                value: 2,
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
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: [
            Tab(text: 'My Code'),
            Tab(text: 'Scan Code'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First tab content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Center(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 50),  // Adjust the height to make space for the CircleAvatar
                              Custom_Text(
                                text: 'Global Trader',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              Custom_Text(
                                text: 'Allooyes business account',
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 15),
                              Icon(
                                Icons.qr_code,
                                size:200,// Use the qr_code icon
                                color:Colors.black, // Adjust the color as needed
                              ),


                            ],
                          ),
                          Positioned(
                            top: -50,  // Move half of the CircleAvatar's height upwards
                            left: 0,
                            right: 0,
                            child: Center(
                              child: CircleAvatar(
                                radius: 40,

                                child: Icon(Icons.person, size: 50, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: 'Your custimers can scan this code to start a\n'
                            'Allooyes chat with you.',
                      ),
                      TextSpan(
                        text: 'Learn more',
                        style: TextStyle(
                          color: Color(0xFF2ccb68),
                        ),
                      )


                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 40.0,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFF3b5564),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Custom_Text(
                        text: 'Share code',
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
          // Second tab content
          Center(
            child: Text('Share code', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
