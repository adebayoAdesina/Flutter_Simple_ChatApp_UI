import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Screen/message_screen.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';

import '../Model/chat.dart';

class ChatListView extends StatelessWidget {
  final Chat chat;
  const ChatListView({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MessageScreen(chat: chat),
              ),
            );
          }),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            leading: GestureDetector(
              onTap: (() {
                print('icon');
              }),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      chat.image.toString(),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 4.0,
                    child: chat.isActive!
                        ? Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? kWhiteColor
                                      : kContentLightColor,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.green),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            title: Text(
              chat.name.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  letterSpacing: 1.5),
            ),
            subtitle: Text(
              chat.lastMessage.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
            trailing: Text(
              chat.time.toString(),
              maxLines: 1,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Divider(
            height: 10.0,
          ),
        )
      ],
    );
  }
}
