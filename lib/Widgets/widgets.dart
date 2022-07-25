import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Model/chat.dart';

import '../Util/colors.dart';

class Widgets {
  AppBar chatAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("Chats"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  AppBar messageAppBar(BuildContext context, Chat chat) {
    return AppBar(
      leading: IconButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      title: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 25,
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
                              color:
                                  MediaQuery.of(context).platformBrightness ==
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
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name.toString(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontSize: 16.0),
              ),
              chat.isActive!
                  ? Column(
                      children: const [
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'online',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(fontSize: 12.0),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam),
        ),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }


  
}