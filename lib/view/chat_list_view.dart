import 'package:flutter/material.dart';
import '../chat_screen.dart';
import '../constand/constants.dart';
import '../model/chat_model/ChatHelper.dart';
import '../model/chat_model/Chat_Item_Model.dart';
import '../widgets/component/custom_text.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  int selectedIndex = -1; // Initialize with -1, meaning no item is selected

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SelectableContainer(
              index: 0,
              text: 'All',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            SelectableContainer(
              index: 1,
              text: 'Unread',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            SelectableContainer(
              index: 2,
              text: 'Groups',
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 15,),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, position) {
              ChatItemModel chatItem = ChatHelper.getChatItem(position);
              return Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            image: chatItem.image,
                            name: chatItem.name,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(chatItem.image.toString()),
                      ),
                      title: Text(
                        chatItem.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            position % 2 == 0 ? Icons.done : Icons.done_all,
                            color: position % 2 == 0 ? Colors.grey : Colors.blue,
                          ),
                          SizedBox(width: 5),
                          Text(
                            chatItem.mostRecentMessage,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          chatItem.messageDate,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontFamily: Regular,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              );
            },
            itemCount: ChatHelper.itemCount,
          ),
        ),
      ],
    );
  }
}

class SelectableContainer extends StatelessWidget {
  final int index;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableContainer({
    required this.index,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFF4e6c7c).withOpacity(0.5) : Color(0xFFf5f6f1), // Change color based on selection
            borderRadius: BorderRadius.circular(100.0), // Make it a circle
          ),
          child: Custom_Text(
            text: text,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
