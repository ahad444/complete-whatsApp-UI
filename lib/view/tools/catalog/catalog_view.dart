import 'package:flutter/material.dart';
import '../../../widgets/component/custom_text.dart';
import '../shortlinks/short_links.dart';

class CatalogView extends StatefulWidget {
  const CatalogView({Key? key}) : super(key: key);

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF3b5564),
          title: Custom_Text(text: 'Catalog Manager', fontSize: 17, color: Colors.white),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Share'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('Collections'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text('Boost'),
                  value: 4,
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
        body: Column(
          children: <Widget>[

            Stack(
              children: [
                // Image background
                Container(
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  color: Colors.black, // Add a darker shade background color
                  child: Image.asset(
                    'images/bus2.jpg', // Replace 'your_image.png' with your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
                // Dark overlay
                Container(
                  color: Colors.black.withOpacity(0.6), // Adjust opacity as needed
                  width: double.infinity,
                  height: 200, // Same height as the image
                ),
                // Centered Text
                Positioned.fill(
                  child: Center(
                    child: Custom_Text(
                      text: 'Your Name',
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
SizedBox(height: 20,),
            Center(
              child: Custom_Text(
                text: 'Create a catalog',
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Custom_Text(
                text: 'Send products and services to your customers\n'
                    '             and save space on your phone',
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey), // Outline border color
                          borderRadius: BorderRadius.circular(15), // Rounded border radius
                          // Fill color

                        ),
                        child: Center(
                          child: Icon(
                            Icons.add, // Your desired icon
                            color: Colors.black, // Icon color
                            size: 20, // Icon size
                          ),
                        ),

                      ),
                      SizedBox(
                        width: 8.0,
                      ), // Add some space between the icon and the text
                      Custom_Text(
                        text: 'Add new Item',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),


                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
