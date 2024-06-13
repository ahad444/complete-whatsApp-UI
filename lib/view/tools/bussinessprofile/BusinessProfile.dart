import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapui/view/tools/advertise/advertise_view.dart';
import 'package:whatsapui/view/tools/bussinessprofile/set_address.dart';
import '../../../widgets/component/custom_text.dart';

class BusinessProfile extends StatefulWidget {
  const BusinessProfile({Key? key}) : super(key: key);

  @override
  State<BusinessProfile> createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  String userName = 'Your Bussiness Name';
  String companyName = 'Your Company Name';
  String description = 'Your Company Description';
  String businessAddress = '123 Business St.';
  String businessHours = '9 AM to 5 PM';
  String email = 'contact@company.com';
  String website = 'www.company.com';
  String urgent = 'Urgent calls only';
  String number = '+123456789';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child:Stack(
            children: [
              SizedBox(
                height: 130.0,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bus2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 0.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(

                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context); // Close the dialog
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return _buildBottomSheet(context);
                                      },
                                    );
                                  },
                                  child: Text("Add or edit profile photo",style: TextStyle(fontSize: 15),),
                                ),
                                SizedBox(height: 30,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context); // Close the dialog
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return _buildBottomSheet(context);
                                      },
                                    );
                                  },
                                  child: Text("Add or edit cover photo",style: TextStyle(fontSize: 15),),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/bus.jpg'),
                  ),
                ),
              ),
              Positioned(
                bottom: 30.0,
                right: 10.0,
                child: GestureDetector(
                  onTap: () {
                    // _showEditDialog(context);
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),


        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.0,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.speed_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            SizedBox(width: 8.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AdvertiseView()),
                                );
                              },
                              child: Custom_Text(
                                text: 'Boost',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200.0, // Adjust height as needed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Add your share options here
                                  ListTile(
                                    leading: Icon(Icons.share),
                                    title: Text('Share on Platform 1'),
                                    onTap: () {
                                      // Handle share on Platform 1
                                      Navigator.pop(context);
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.share),
                                    title: Text('Share on Platform 2'),
                                    onTap: () {
                                      // Handle share on Platform 2
                                      Navigator.pop(context);
                                    },
                                  ),
                                  // Add more ListTile for additional platforms
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 40.0,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 24.0,
                              ),
                              SizedBox(width: 8.0),
                              Custom_Text(
                                text: 'Share',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10),
                _buildProfileEditTile(Icons.person_outline, "Name", userName, (value) {
                  setState(() {
                    userName = value;
                  });
                }),
                _buildProfileEditTile(
                    Icons.close, "Company Name", companyName, (value) {
                  setState(() {
                    companyName = value;
                  });
                }),

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SetAddress()),
                        // );

                      },
                      child: ListTile(
                        leading: Icon(Icons.store_outlined, color:Color(0xFF657983),), // Icon on the left side
                        title: Custom_Text(
                          text: 'Description',
                          fontSize: 15,
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Text in the middle
                        trailing: Icon(Icons.edit_outlined,color: Color(0xFF657983), ), // Icon on the right side
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SetAddress()),
                        );

                      },
                      child: ListTile(
                        leading: Icon(Icons.location_on, color:Color(0xFF657983),), // Icon on the left side
                        title: Custom_Text(
                          text: 'Bussiness address',
                          fontSize: 15,
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Text in the middle
                        trailing: Icon(Icons.edit_outlined,color: Color(0xFF657983), ), // Icon on the right side
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SetAddress()),
                        // );

                      },
                      child: ListTile(
                        leading: Icon(Icons.access_time, color:Color(0xFF657983),), // Icon on the left side
                        title: Custom_Text(
                          text: '9 AM to 5 PM',
                          fontSize: 15,
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                        ), // Text in the middle
                        trailing: Icon(Icons.edit_outlined,color: Color(0xFF657983), ), // Icon on the right side
                      ),
                    )


                  ],
                ),

                _buildProfileEditTile(Icons.email, "Email", email, (value) {
                  setState(() {
                    email = value;
                  });
                }),
                _buildProfileEditTile(Icons.close, "Website", website,
                    (value) {
                  setState(() {
                    website = value;
                  });
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Custom_Text(
                        text: 'Add another website',
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Custom_Text(
                        text: 'Products ',
                        fontSize: 15,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      Custom_Text(
                        text: 'Manage',
                        fontSize: 15,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 17.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/bus.jpg',
                            height: 80,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/bus.jpg',
                            height: 80,
                            width: 10,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Custom_Text(
                        text: 'Add Facebook or Instagram',
                        fontSize: 15,
                        color:Color(0xFF2ccb68),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Custom_Text(
                        text: 'About and phone number',
                        fontSize: 15,
                        color:Color(0xFF657983),
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                _buildProfileEditTile(
                    Icons.close, "Urgent calls only", urgent, (value) {
                  setState(() {
                    userName = value;
                  });
                }),
                _buildProfileEditTile(Icons.phone_outlined, "+123456789", number,
                    (value) {
                  setState(() {
                    number = value;
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileEditTile(
    IconData leadingIcon,
    String label,
    String value,
    Function(String) onEdit,
  ) {
    return ListTile(
      leading: Icon(leadingIcon,color:Color(0xFF657983), ),
      title: Text(
        value,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      trailing: Icon(Icons.edit_outlined, color: Color(0xFF657983)),
      onTap: () => _showEditDialog(context, label, value, onEdit),
    );
  }

  void _showEditDialog(
    BuildContext context,
    String attribute,
    String currentValue,
    Function(String) updateFunction,
  ) {
    TextEditingController controller =
        TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $attribute'),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(hintText: 'Enter $attribute'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                updateFunction(controller.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Widget _buildBottomSheet(BuildContext context) {
    return Container(
      height: 200.0, // Adjust height as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Take photo from camera'),
            onTap: () {
              // Handle camera option
              Navigator.pop(context); // Close the bottom sheet
            },
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Choose photo from gallery'),
            onTap: () {
              // Handle gallery option
              Navigator.pop(context); // Close the bottom sheet
            },
          ),
        ],
      ),
    );
  }

}
