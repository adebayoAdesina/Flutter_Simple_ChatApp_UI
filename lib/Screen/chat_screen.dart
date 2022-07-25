import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? kWhiteColor
              : kSecondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Chats"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
    );
  }
}
