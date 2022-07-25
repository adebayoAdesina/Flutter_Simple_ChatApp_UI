import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Model/chat.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';
import 'package:simple_chat_app_ui/Util/util.dart';
import 'package:simple_chat_app_ui/Widgets/filled_outline_button.dart';
import 'package:simple_chat_app_ui/Widgets/widgets.dart';

import '../Widgets/chat_listview.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? kWhiteColor
              : kSecondaryColor,
      appBar: Widgets().chatAppBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            color: kPrimaryColor,
            child: Row(
              children: [
                FilledOutlineButton(
                  text: "Recent Message",
                  onPressed: () {},
                ),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                FilledOutlineButton(
                  text: "Active",
                  onPressed: () {},
                  isFilled: false,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) {
                Chat chatData = chatsData[index];
                return ChatListView(chat: chatData);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onPressed: () {},
        child: const Icon(
          Icons.person_add_alt_1,
          color: kWhiteColor,
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/265564586_1566835933658693_8998498918125821393_n.jpg'),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }

  
}
