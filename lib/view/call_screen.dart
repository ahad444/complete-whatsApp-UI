import 'package:flutter/material.dart';

import '../model/call_model/CallItemModel.dart';
import '../model/call_model/call_helper.dart';
import '../model/status_model/StatusItemModel.dart';
import '../model/status_model/Status_Helper.dart';
import '../widgets/component/custom_text.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 10 , bottom: 5 , left: 20 ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30, // Size of the avatar
                backgroundImage: AssetImage('assets/images/logo.png'), // Path to your asset image
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Custom_Text(text: 'Create call link',fontSize:15,color: Colors.black,fontWeight: FontWeight.bold,),
                  Custom_Text(text: 'Share a link for your Allooyes call',fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold,),

                ],)

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10 , bottom: 5 , left: 20 ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_Text(text: 'Recent',fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold,),
            ],
          ),

        ),



        Expanded(
          child: ListView.builder(
            itemBuilder: (context, position) {
              CallItemModel callItemModel = CallHelper.getCallItem(position);
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10 , bottom: 5 , left: 20 ),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(callItemModel.image),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          callItemModel.name,
                                          style: Theme.of(context).textTheme.headline6,

                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Text(
                                        callItemModel.dateTime,
                                        style: Theme.of(context).textTheme.bodyText1,

                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.call_outlined , color: Color(0xff00b09c),)

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                ],
              );
            },
            itemCount: CallHelper.itemCount,
          ),
        ),

      ],
    );
  }
}
