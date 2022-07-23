import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/welcome.png'),
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              'Welcome to Chats',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            const Spacer(),
            Text(
              'Chat friends, chat families, chat all...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64)),
            ),
            const Spacer(
              flex: 3,
            ),
            FittedBox(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(0.8),
                          ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
