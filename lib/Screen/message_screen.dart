import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Model/chat_message.dart';
import 'package:simple_chat_app_ui/Widgets/message.dart';
import 'package:simple_chat_app_ui/Widgets/widgets.dart';

import '../Model/chat.dart';
import '../Util/colors.dart';

enum Clicked { record, sticker, typing, attachment, camera }

class MessageScreen extends StatefulWidget {
  final Chat chat;
  const MessageScreen({Key? key, required this.chat}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  Clicked? clicked;

  void onClicked(Clicked click) {
    setState(() {
      clicked = click;
    });
    print(clicked);
  }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black.withOpacity(0.6);
    var scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? kWhiteColor
              : kSecondaryColor,
      appBar: Widgets().messageAppBar(context, widget.chat),
      body: ListView.builder(
        itemCount: demoChatMessages.length,
        itemBuilder: ((context, index) => Message(
              message: demoChatMessages[index],
              chat: widget.chat,
            )),
      ),
      bottomNavigationBar: chatInputField(scaffoldColor, color),
    );
  }

  Container chatInputField(Color scaffoldColor, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.05),
        boxShadow: [
          BoxShadow(
            color: scaffoldColor.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 32,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          bottomIcon(
            scaffoldColor,
            color,
            Icons.mic_none_rounded,
            Clicked.record,
          ),
          bottomIcon(
            scaffoldColor,
            color,
            Icons.sentiment_satisfied_alt_rounded,
            Clicked.sticker,
          ),
          Expanded(
            child: TextField(
              onTap: () {
                onClicked(Clicked.typing);
              },
              decoration: const InputDecoration(
                  hintText: 'Type message', border: InputBorder.none),
            ),
          ),
          bottomIcon(
            scaffoldColor,
            color,
            Icons.attach_file,
            Clicked.attachment,
          ),
          bottomIcon(
            scaffoldColor,
            color,
            Icons.flip_camera_ios_outlined,
            Clicked.camera,
          ),
        ],
      ),
    );
  }

  IconButton bottomIcon(
      Color scaffoldColor, Color color, IconData icon, Clicked click) {
    return IconButton(
      onPressed: () {
        onClicked(click);
      },
      icon: Icon(
        icon,
        color: clicked == click ? scaffoldColor : color,
      ),
    );
  }
}
