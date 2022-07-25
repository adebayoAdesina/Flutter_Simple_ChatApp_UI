import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Screen/chat_screen.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';
import 'package:simple_chat_app_ui/Util/util.dart';
import 'package:simple_chat_app_ui/Widgets/primary_button.dart';
import 'package:simple_chat_app_ui/Widgets/sign_in_and_up_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/R.png'),
              height: 250,
            ),
            SignInAndUpButton(
              text: "Sign In",
              color: Theme.of(context).scaffoldBackgroundColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            SignInAndUpButton(
              text: "Sign Up",
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
