import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Model/chat_message.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';
import 'package:simple_chat_app_ui/Util/util.dart';

import '../Model/chat.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  final Chat chat;
  const Message({Key? key, required this.message, required this.chat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContent(ChatMessage message, double opacity, Color color) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return Text(
            message.text.toString(),
            style: TextStyle(color: color),
          );
        case ChatMessageType.audio:
          return Container(
            width: MediaQuery.of(context).size.width * 0.55,
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 0.75,
              vertical: kDefaultPadding / 2.5,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(opacity),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.play_arrow,
                  color: color,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: color.withOpacity(0.4),
                      ),
                      Positioned(
                        top: -3,
                        right: 30,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  '1.02',
                  style: TextStyle(fontSize: 12, color: color),
                )
              ],
            ),
          );
        case ChatMessageType.video:
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/charger.png'),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        default:
          return const SizedBox.shrink();
      }
    }

    Icon dotChange(ChatMessage message) {
      switch (message.messageStatus) {
        case MessageStatus.viewed:
          return const Icon(
            Icons.done_all_outlined,
            size: 12,
            color: Colors.white,
          );
        case MessageStatus.notSent:
          return const Icon(
            Icons.error,
            size: 13,
            color: Colors.white,
          );

        default:
          return const Icon(
            Icons.done,
            size: 12,
            color: Colors.white,
          );
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: message.isSender!
          ? Row(
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
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.1),
                  ),
                  child: InkWell(
                    onLongPress: () {},
                    child: Column(
                      children: [messageContent(message, 0.1, Colors.black87)],
                    ),
                  ),
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  padding: const EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: InkWell(
                    onLongPress: () {},
                    child: Column(
                      children: [messageContent(message, 1, Colors.white)],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                  child: dotChange(message),
                )
              ],
            ),
    );
  }
}
