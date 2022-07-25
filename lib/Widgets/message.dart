import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Model/chat_message.dart';

import '../Model/chat.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  final Chat chat;
  const Message({Key? key, required this.message, required this.chat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              chat.image.toString(),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
            ),
            child: InkWell(
              onLongPress: () {},
              child: Column(
                children: [
                  Text(
                    message.text.toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
