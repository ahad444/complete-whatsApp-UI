import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/component/custom_text.dart';



class ProxyScreen extends StatefulWidget {
  const ProxyScreen({Key? key}) : super(key: key);

  @override
  State<ProxyScreen> createState() => _ProxyScreenState();
}

class _ProxyScreenState extends State<ProxyScreen> {
  // Example data, replace these with your actual data source

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3b5564),
        title: Custom_Text(
          text: 'Proxy',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Custom_Text(
                  text: 'Use proxy',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),


            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: 'Only use a proxy if you are unable to \n'
                                'to connect to Allooyes. Your IP adress\n'
                                'may be visible to the proxy provider, which\n'
                                'is not Allooyes '
                              ,
                          ),
                          TextSpan(
                            text: 'Learn More',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Custom_Text(
                  text: 'Set-up proxy',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
